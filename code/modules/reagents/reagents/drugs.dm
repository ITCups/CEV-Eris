/* Drugs */

/datum/reagent/space_drugs
	name = "Space drugs"
	id = "space_drugs"
	description = "An illegal chemical compound used as drug."
	taste_description = "bitterness"
	taste_mult = 0.4
	reagent_state = LIQUID
	color = "#60A584"
	metabolism = REM * 0.5
	overdose = REAGENTS_OVERDOSE
	addiction_chance = 100

/datum/reagent/space_drugs/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	M.druggy = max(M.druggy, 15 * effectMultiplier)
	if(prob(10 * effectMultiplier) && isturf(M.loc) && !istype(M.loc, /turf/space) && M.canmove && !M.restrained())
		step(M, pick(cardinal))
	if(prob(7 * effectMultiplier))
		M.emote(pick("twitch", "drool", "moan", "giggle"))
	M.add_chemical_effect(CE_PULSE, -1)


/datum/reagent/serotrotium
	name = "Serotrotium"
	id = "serotrotium"
	description = "A chemical compound that promotes concentrated production of the serotonin neurotransmitter in humans."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#202040"
	metabolism = REM * 0.25
	overdose = REAGENTS_OVERDOSE
	addiction_threshold = 20
	addiction_chance = 10

/datum/reagent/serotrotium/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	if(prob(7 * effectMultiplier))
		M.emote(pick("twitch", "drool", "moan", "gasp"))


/datum/reagent/cryptobiolin
	name = "Cryptobiolin"
	id = "cryptobiolin"
	description = "Cryptobiolin causes confusion and dizzyness."
	taste_description = "sourness"
	reagent_state = LIQUID
	color = "#000055"
	metabolism = REM * 0.5
	overdose = REAGENTS_OVERDOSE

/datum/reagent/cryptobiolin/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	M.make_dizzy(4 * effectMultiplier)
	M.confused = max(M.confused, 20 * effectMultiplier)


/datum/reagent/impedrezene
	name = "Impedrezene"
	id = "impedrezene"
	description = "Impedrezene is a narcotic that impedes one's ability by slowing down the higher brain cell functions."
	taste_description = "numbness"
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose = REAGENTS_OVERDOSE

/datum/reagent/impedrezene/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	M.jitteriness = max(M.jitteriness - (5 * effectMultiplier), 0)
	if(prob(80))
		M.adjustBrainLoss(0.1 * effectMultiplier)
	if(prob(50))
		M.drowsyness = max(M.drowsyness, 3 * effectMultiplier)
	if(prob(10))
		M.emote("drool")


/datum/reagent/mindbreaker
	name = "Mindbreaker Toxin"
	id = "mindbreaker"
	description = "A powerful hallucinogen, it can cause fatal effects in users."
	taste_description = "sourness"
	reagent_state = LIQUID
	color = "#B31008"
	metabolism = REM * 0.25
	overdose = REAGENTS_OVERDOSE

/datum/reagent/mindbreaker/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	M.hallucination(50 * effectMultiplier, 50 * effectMultiplier)


/datum/reagent/psilocybin
	name = "Psilocybin"
	id = "psilocybin"
	description = "A strong psycotropic derived from certain species of mushroom."
	taste_description = "mushroom"
	color = "#E700E7"
	overdose = REAGENTS_OVERDOSE * 0.66
	metabolism = REM * 0.5
	addiction_chance = 10
	nsa = 40

/datum/reagent/psilocybin/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	M.druggy = max(M.druggy, 30 * effectMultiplier)
	
	var/effective_dose = dose
	if(issmall(M)) effective_dose *= 2
	if(effective_dose < 1)
		M.apply_effect(3, STUTTER)
		M.make_dizzy(5)
		M.stats.addTempStat(STAT_COG, STAT_LEVEL_BASIC, STIM_TIME, "psilocybin")
		M.hallucination(50, 50)
		if(prob(5))
			M.emote(pick("twitch", "giggle"))
	else if(effective_dose < 2)
		M.apply_effect(3, STUTTER)
		M.make_jittery(5)
		M.make_dizzy(5)
		M.druggy = max(M.druggy, 35)
		if(prob(10))
			M.emote(pick("twitch", "giggle"))
	else
		M.apply_effect(3, STUTTER)
		M.make_jittery(10)
		M.make_dizzy(10)
		M.druggy = max(M.druggy, 40)
		M.stats.addTempStat(STAT_COG, STAT_LEVEL_ADEPT, STIM_TIME, "psilocybin")
		M.hallucination(100, 50)
		if(prob(15))
			M.emote(pick("twitch", "giggle"))

/datum/reagent/nicotine
	name = "Nicotine"
	id = "nicotine"
	description = "A highly addictive stimulant extracted from the tobacco plant."
	taste_description = "pepper"
	reagent_state = LIQUID
	color = "#181818"
	overdose = REAGENTS_OVERDOSE/2
	addiction_chance = 20
	nsa = 10

/datum/reagent/nicotine/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	..()
	M.add_chemical_effect(CE_PULSE, 1)
	M.add_chemical_effect(CE_PAINKILLER, 5 * effectMultiplier)

/datum/reagent/nicotine/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_BIO, -STAT_LEVEL_BASIC, STIM_TIME, "nicotine_w")

/datum/reagent/nicotine/overdose(var/mob/living/carbon/M, var/alien)
	M.add_side_effect("Headache", 11)
	if(prob(5))
		M.vomit()
	M.adjustToxLoss(0.5)

/datum/reagent/hyperzine
	name = "Hyperzine"
	id = "hyperzine"
	description = "Hyperzine is a highly effective, long lasting, muscle stimulant."
	taste_description = "acid"
	reagent_state = LIQUID
	color = "#FF3300"
	metabolism = REM * 0.15
	overdose = REAGENTS_OVERDOSE * 0.66
	withdrawal_threshold = 10
	nsa = 70

/datum/reagent/hyperzine/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	if(prob(5))
		M.emote(pick("twitch", "blink_r", "shiver"))
	M.add_chemical_effect(CE_SPEEDBOOST, 1)
	M.add_chemical_effect(CE_PULSE, 2)

/datum/reagent/hyperzine/withdrawal_act(mob/living/carbon/M)
	M.add_chemical_effect(CE_SPEEDBOOST, -1)
	M.add_chemical_effect(CE_PULSE, 1)

/datum/reagent/sanguinum
	name = "Sanguinum"
	id = "sanguinum"
	description = ""
	taste_description = "metal"
	reagent_state = LIQUID
	color = "#e06270"
	metabolism = REM
	overdose = REAGENTS_OVERDOSE/2
	nsa = 80
	addiction_chance = 30

/datum/reagent/sanguinum/affect_blood(mob/living/carbon/M, alien, effectMultiplier)
	M.add_chemical_effect(CE_BLOODRESTORE, 1.6 * effectMultiplier)
	if(prob(2))
		spawn 
			M.emote("me", 1, "coughs up blood!")
		M.dripBlood(10)

/datum/reagent/sanguinum/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_TGH, -STAT_LEVEL_BASIC, STIM_TIME, "sanguinum_w")
	M.stats.addTempStat(STAT_COG, -STAT_LEVEL_BASIC, STIM_TIME, "sanguinum_w")
	M.stats.addTempStat(STAT_ROB, -STAT_LEVEL_BASIC, STIM_TIME, "sanguinum_w")

/datum/reagent/sanguinum/overdose(var/mob/living/carbon/M, var/alien)
	var/mob/living/carbon/human/H = M
	if(istype(H))
		var/list/obj/item/organ/external/bodyParts = locate(/obj/item/organ/external) in H.organs_by_name
		var/chanceToRupture = 30
		for(var/obj/item/organ/external/E in bodyParts)
			if(E.hasInternalBleeding())
				chanceToRupture -= 10
		chanceToRupture = max(0,chanceToRupture)
		if(prob(chanceToRupture))
			var/list/obj/item/organ/external/unluckyPart = pick(bodyParts)
			var/datum/wound/internal_bleeding/I = new (15)
			unluckyPart.wounds += I