/datum/nano_module/chem_catalog
	name = "Chemistry Catalog"

/datum/nano_module/chem_catalog/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = NANOUI_REINITIALIZE, state = GLOB.default_state)
	var/list/data = ui_data(user)
	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "chemistry_catalog.tmpl", name, 640, 700, state = state)
		refresh_catalog_browsing(user)
		ui.set_initial_data(data)
		ui.auto_update_layout = 1
		ui.open()

/datum/nano_module/chem_catalog/Topic(href, href_list)
	if(..())
		return 1

	if(href_list["greet"])
		browse_catalog(GLOB.catalogs[CATALOG_ALL], usr)
		return 0