//#################WORLD
#define WORLD_ICON_SIZE 32

//###############CHEMISTRY
#define DEFAULT_HUNGER_FACTOR 0.03 // Factor of how fast mob nutrition decreases

#define REM 0.2 // Means 'Reagent Effect Multiplier'. This is how many units of reagent are consumed per tick

#define CHEM_TOUCH 1
#define CHEM_INGEST 2
#define CHEM_BLOOD 3

#define MINIMUM_CHEMICAL_VOLUME 0.01

#define SOLID 1
#define LIQUID 2
#define GAS 3

#define REAGENTS_OVERDOSE 30

#define CHEM_SYNTH_ENERGY 500 // How much energy does it take to synthesize 1 unit of chemical, in Joules.

// Some on_mob_life() procs check for alien races.
#define IS_DIONA   1
#define IS_VOX     2
#define IS_SKRELL  3
#define IS_UNATHI  4
#define IS_XENOS   5
#define IS_SLIME   6
#define IS_NABBER  7

#define CE_STABLE        "stable"       // Inaprovaline
#define CE_ANTIBIOTIC    "antibiotic"   // Spaceacilin
#define CE_BLOODRESTORE  "bloodrestore" // Iron/nutriment
#define CE_PAINKILLER    "painkiller"
#define CE_ALCOHOL       "alcohol"      // Liver filtering
#define CE_ALCOHOL_TOXIC "alcotoxic"    // Liver damage
#define CE_SPEEDBOOST    "gofast"       // Hyperzine
#define CE_SLOWDOWN      "goslow"       // Slowdown
#define CE_PULSE         "xcardic"      // increases or decreases heart rate
#define CE_NOPULSE       "heartstop"    // stops heartbeat
#define CE_ANTITOX       "antitox"      // Dylovene
#define CE_OXYGENATED    "oxygen"       // Dexalin.
#define CE_BRAIN_REGEN   "brainfix"     // Alkysine.
#define CE_ANTIVIRAL     "antiviral"    // Anti-virus effect.
#define CE_TOXIN         "toxins"       // Generic toxins, stops autoheal.
#define CE_BREATHLOSS    "breathloss"   // Breathing depression, makes you need more air
#define CE_MIND    		 "mindbending"  // Stabilizes or wrecks mind. Used for hallucinations
#define CE_CRYO 	     "cryogenic"    // Prevents damage from being frozen
#define CE_BLOCKAGE	     "blockage"     // Gets in the way of blood circulation, higher the worse
#define CE_SQUEAKY		 "squeaky"      // Helium voice. Squeak squeak.
#define CE_ANTIBIOTIC    "antibiotic"   // Fights wound-based infections.

//reagent flags
#define IGNORE_MOB_SIZE 0x1
#define AFFECTS_DEAD    0x2

//############SKILLS
#define SKILL_NONE     1
#define SKILL_BASIC    2
#define SKILL_ADEPT    3
#define SKILL_EXPERT   4
#define SKILL_PROF     5

#define SKILL_MIN      1 // Min skill value selectable
#define SKILL_MAX      5 // Max skill value selectable
#define SKILL_DEFAULT  4 //most mobs will default to this

#define SKILL_EASY     1
#define SKILL_AVERAGE  2
#define SKILL_HARD     4

#define SKILL_BUREAUCRACY   /decl/hierarchy/skill/organizational/bureaucracy
#define SKILL_FINANCE       /decl/hierarchy/skill/organizational/finance
#define SKILL_EVA           /decl/hierarchy/skill/general/EVA
#define SKILL_MECH          /decl/hierarchy/skill/general/mech
#define SKILL_PILOT         /decl/hierarchy/skill/general/pilot
#define SKILL_HAULING       /decl/hierarchy/skill/general/hauling
#define SKILL_COMPUTER      /decl/hierarchy/skill/general/computer
#define SKILL_BOTANY        /decl/hierarchy/skill/service/botany
#define SKILL_COOKING       /decl/hierarchy/skill/service/cooking
#define SKILL_COMBAT        /decl/hierarchy/skill/security/combat
#define SKILL_WEAPONS       /decl/hierarchy/skill/security/weapons
#define SKILL_FORENSICS     /decl/hierarchy/skill/security/forensics
#define SKILL_CONSTRUCTION  /decl/hierarchy/skill/engineering/construction
#define SKILL_ELECTRICAL    /decl/hierarchy/skill/engineering/electrical
#define SKILL_ATMOS         /decl/hierarchy/skill/engineering/atmos
#define SKILL_ENGINES       /decl/hierarchy/skill/engineering/engines
#define SKILL_DEVICES       /decl/hierarchy/skill/research/devices
#define SKILL_SCIENCE       /decl/hierarchy/skill/research/science
#define SKILL_MEDICAL       /decl/hierarchy/skill/medical/medical
#define SKILL_ANATOMY       /decl/hierarchy/skill/medical/anatomy
#define SKILL_VIROLOGY      /decl/hierarchy/skill/medical/virology
#define SKILL_CHEMISTRY     /decl/hierarchy/skill/medical/chemistry

//###################DAMAGE_ORGANS
// Damage things. TODO: Merge these down to reduce on defines.
// Way to waste perfectly good damage-type names (BRUTE) on this... If you were really worried about case sensitivity, you could have just used lowertext(damagetype) in the proc.
#define BRUTE       "brute"
#define BURN        "fire"
#define TOX         "tox"
#define OXY         "oxy"
#define CLONE       "clone"
#define PAIN        "pain"
#define ELECTROCUTE "electrocute"

#define CUT       "cut"
#define BRUISE    "bruise"
#define PIERCE    "pierce"
#define LASER     "laser"
#define SHATTER   "shatter"

#define STUN      "stun"
#define WEAKEN    "weaken"
#define PARALYZE  "paralize"
#define IRRADIATE "irradiate"
#define SLUR      "slur"
#define STUTTER   "stutter"
#define EYE_BLUR  "eye_blur"
#define DROWSY    "drowsy"

// Damage flags
#define DAM_SHARP (1<<0)
#define DAM_EDGE  (1<<1)
#define DAM_LASER (1<<2)

#define FIRE_DAMAGE_MODIFIER 0.0215 // Higher values result in more external fire damage to the skin. (default 0.0215)
#define  AIR_DAMAGE_MODIFIER 2.025  // More means less damage from hot air scalding lungs, less = more damage. (default 2.025)

// Organ defines.
#define ORGAN_CUT_AWAY   (1<<0)  // The organ is in the process of being surgically removed.
#define ORGAN_BLEEDING   (1<<1)  // The organ is currently bleeding.
#define ORGAN_BROKEN     (1<<2)  // The organ is broken.
#define ORGAN_DEAD       (1<<3)  // The organ is necrotic.
#define ORGAN_MUTATED    (1<<4)  // The organ is unusable due to genetic damage.
#define ORGAN_ARTERY_CUT (1<<6)  // The organ has had its artery cut.
#define ORGAN_TENDON_CUT (1<<7)  // The organ has had its tendon cut.
#define ORGAN_DISFIGURED (1<<8)  // The organ is scarred/disfigured. Alters whether or not the face can be recognised.
#define ORGAN_SABOTAGED  (1<<9)  // The organ will explode if exposed to EMP, if prosthetic.
#define ORGAN_ASSISTED   (1<<10) // The organ is partially prosthetic. No mechanical effect.
#define ORGAN_ROBOTIC    (1<<11) // The organ is robotic. Changes numerous behaviors, search BP_IS_ROBOTIC for checks.
#define ORGAN_BRITTLE    (1<<12) // The organ takes additional blunt damage. If robotic, cannot be repaired through normal means.
#define ORGAN_CRYSTAL    (1<<13) // The organ does not suffer laser damage, but shatters on droplimb.

// Organ flag defines.
#define ORGAN_FLAG_CAN_AMPUTATE   (1<<0) // The organ can be amputated.
#define ORGAN_FLAG_CAN_BREAK      (1<<1) // The organ can be broken.
#define ORGAN_FLAG_CAN_GRASP      (1<<2) // The organ contributes to grasping.
#define ORGAN_FLAG_CAN_STAND      (1<<3) // The organ contributes to standing.
#define ORGAN_FLAG_HAS_TENDON     (1<<4) // The organ can have its tendon cut.
#define ORGAN_FLAG_FINGERPRINT    (1<<5) // The organ has a fingerprint.
#define ORGAN_FLAG_GENDERED_ICON  (1<<6) // The icon state for this organ appends _m/_f.
#define ORGAN_FLAG_HEALS_OVERKILL (1<<7) // The organ heals from overkill damage.

// Droplimb types.
#define DROPLIMB_EDGE 0
#define DROPLIMB_BLUNT 1
#define DROPLIMB_BURN 2

// Robotics hatch_state defines.
#define HATCH_CLOSED 0
#define HATCH_UNSCREWED 1
#define HATCH_OPENED 2

// These control the amount of blood lost from burns. The loss is calculated so
// that dealing just enough burn damage to kill the player will cause the given
// proportion of their max blood volume to be lost
// (e.g. 0.6 == 60% lost if 200 burn damage is taken).
#define FLUIDLOSS_WIDE_BURN 0.6 //for burns from heat applied over a wider area, like from fire
#define FLUIDLOSS_CONC_BURN 0.4 //for concentrated burns, like from lasers

// Damage above this value must be repaired with surgery.
#define ROBOLIMB_SELF_REPAIR_CAP 30

//Germs and infections.
#define GERM_LEVEL_AMBIENT  275 // Maximum germ level you can reach by standing still.
#define GERM_LEVEL_MOVE_CAP 300 // Maximum germ level you can reach by running around.

#define INFECTION_LEVEL_ONE   250
#define INFECTION_LEVEL_TWO   500  // infections grow from ambient to two in ~5 minutes
#define INFECTION_LEVEL_THREE 1000 // infections grow from two to three in ~10 minutes

//Blood levels. These are percentages based on the species blood_volume far.
#define BLOOD_VOLUME_SAFE    85
#define BLOOD_VOLUME_OKAY    70
#define BLOOD_VOLUME_BAD     60
#define BLOOD_VOLUME_SURVIVE 30

//####################MOBS

// /mob/var/stat things.
#define CONSCIOUS   0
#define UNCONSCIOUS 1
#define DEAD        2

// Bitflags defining which status effects could be or are inflicted on a mob.
#define CANSTUN     0x1
#define CANWEAKEN   0x2
#define CANPARALYSE 0x4
#define CANPUSH     0x8
#define LEAPING     0x10
#define PASSEMOTES  0x32    // Mob has a cortical borer or holders inside of it that need to see emotes.
#define GODMODE     0x1000
#define FAKEDEATH   0x2000  // Replaces stuff like changeling.changeling_fakedeath.
#define NO_ANTAG    0x4000  // Players are restricted from gaining antag roles when occupying this mob
#define XENO_HOST   0x8000  // Tracks whether we're gonna be a baby alien's mummy.

// Grab Types
#define GRAB_NORMAL			"normal"
#define GRAB_NAB			"nab"
#define GRAB_NAB_SPECIAL	"special nab"

// Grab levels.
#define NORM_PASSIVE    "normal passive"
#define NORM_STRUGGLE   "normal struggle"
#define NORM_AGGRESSIVE "normal aggressive"
#define NORM_NECK       "normal neck"
#define NORM_KILL       "normal kill"

#define NAB_PASSIVE		"nab passive"
#define NAB_AGGRESSIVE	"nab aggressive"
#define NAB_KILL		"nab kill"

#define BORGMESON 0x1
#define BORGTHERM 0x2
#define BORGXRAY  0x4
#define BORGMATERIAL  8

#define HOSTILE_STANCE_IDLE      1
#define HOSTILE_STANCE_ALERT     2
#define HOSTILE_STANCE_ATTACK    3
#define HOSTILE_STANCE_ATTACKING 4
#define HOSTILE_STANCE_TIRED     5
#define HOSTILE_STANCE_INSIDE    6

#define LEFT  0x1
#define RIGHT 0x2
#define UNDER 0x4

// Pulse levels, very simplified.
#define PULSE_NONE    0 // So !M.pulse checks would be possible.
#define PULSE_SLOW    1 // <60     bpm
#define PULSE_NORM    2 //  60-90  bpm
#define PULSE_FAST    3 //  90-120 bpm
#define PULSE_2FAST   4 // >120    bpm
#define PULSE_THREADY 5 // Occurs during hypovolemic shock
#define GETPULSE_HAND 0 // Less accurate. (hand)
#define GETPULSE_TOOL 1 // More accurate. (med scanner, sleeper, etc.)

//intent flags
#define I_HELP		"help"
#define I_DISARM	"disarm"
#define I_GRAB		"grab"
#define I_HURT		"harm"

//These are used Bump() code for living mobs, in the mob_bump_flag, mob_swap_flags, and mob_push_flags vars to determine whom can bump/swap with whom.
#define HUMAN 1
#define MONKEY 2
#define ALIEN 4
#define ROBOT 8
#define SLIME 16
#define SIMPLE_ANIMAL 32
#define HEAVY 64
#define ALLMOBS (HUMAN|MONKEY|ALIEN|ROBOT|SLIME|SIMPLE_ANIMAL|HEAVY)

// Robot AI notifications
#define ROBOT_NOTIFICATION_NEW_UNIT 1
#define ROBOT_NOTIFICATION_NEW_NAME 2
#define ROBOT_NOTIFICATION_NEW_MODULE 3
#define ROBOT_NOTIFICATION_MODULE_RESET 4

// Appearance change flags
#define APPEARANCE_UPDATE_DNA  0x1
#define APPEARANCE_RACE       (0x2|APPEARANCE_UPDATE_DNA)
#define APPEARANCE_GENDER     (0x4|APPEARANCE_UPDATE_DNA)
#define APPEARANCE_SKIN        0x8
#define APPEARANCE_HAIR        0x10
#define APPEARANCE_HAIR_COLOR  0x20
#define APPEARANCE_FACIAL_HAIR 0x40
#define APPEARANCE_FACIAL_HAIR_COLOR 0x80
#define APPEARANCE_EYE_COLOR 0x100
#define APPEARANCE_ALL_HAIR (APPEARANCE_HAIR|APPEARANCE_HAIR_COLOR|APPEARANCE_FACIAL_HAIR|APPEARANCE_FACIAL_HAIR_COLOR)
#define APPEARANCE_ALL       0xFFFF

// Click cooldown
#define DEFAULT_ATTACK_COOLDOWN 8 //Default timeout for aggressive actions
#define DEFAULT_QUICK_COOLDOWN  4

#define FAST_WEAPON_COOLDOWN 3
#define DEFAULT_WEAPON_COOLDOWN 5
#define SLOW_WEAPON_COOLDOWN 7

#define MIN_SUPPLIED_LAW_NUMBER 15
#define MAX_SUPPLIED_LAW_NUMBER 50

// NT's alignment towards the character
#define COMPANY_LOYAL 			"Loyal"
#define COMPANY_SUPPORTATIVE	"Supportive"
#define COMPANY_NEUTRAL 		"Neutral"
#define COMPANY_SKEPTICAL		"Skeptical"
#define COMPANY_OPPOSED			"Opposed"

#define COMPANY_ALIGNMENTS		list(COMPANY_LOYAL,COMPANY_SUPPORTATIVE,COMPANY_NEUTRAL,COMPANY_SKEPTICAL,COMPANY_OPPOSED)

// Defines mob sizes, used by lockers and to determine what is considered a small sized mob, etc.
#define MOB_LARGE  		40
#define MOB_MEDIUM 		20
#define MOB_SMALL 		10
#define MOB_TINY 		5
#define MOB_MINISCULE	1

// Defines how strong the species is compared to humans. Think like strength in D&D
#define STR_VHIGH       2
#define STR_HIGH        1
#define STR_MEDIUM      0
#define STR_LOW        -1
#define STR_VLOW       -2

// Gluttony levels.
#define GLUT_TINY 1       // Eat anything tiny and smaller
#define GLUT_SMALLER 2    // Eat anything smaller than we are
#define GLUT_ANYTHING 4   // Eat anything, ever

#define GLUT_ITEM_TINY 8         // Eat items with a w_class of small or smaller
#define GLUT_ITEM_NORMAL 16      // Eat items with a w_class of normal or smaller
#define GLUT_ITEM_ANYTHING 32    // Eat any item
#define GLUT_PROJECTILE_VOMIT 64 // When vomitting, does it fly out?

// Devour speeds, returned by can_devour()
#define DEVOUR_SLOW 1
#define DEVOUR_FAST 2

#define TINT_NONE 0
#define TINT_MODERATE 1
#define TINT_HEAVY 2
#define TINT_BLIND 3

#define FLASH_PROTECTION_VULNERABLE -2
#define FLASH_PROTECTION_REDUCED -1
#define FLASH_PROTECTION_NONE 0
#define FLASH_PROTECTION_MODERATE 1
#define FLASH_PROTECTION_MAJOR 2

#define ANIMAL_SPAWN_DELAY round(config.respawn_delay / 6)
#define DRONE_SPAWN_DELAY  round(config.respawn_delay / 3)

// Incapacitation flags, used by the mob/proc/incapacitated() proc
#define INCAPACITATION_NONE 0
#define INCAPACITATION_RESTRAINED 1
#define INCAPACITATION_BUCKLED_PARTIALLY 2
#define INCAPACITATION_BUCKLED_FULLY 4
#define INCAPACITATION_STUNNED 8
#define INCAPACITATION_FORCELYING 16 //needs a better name - represents being knocked down BUT still conscious.
#define INCAPACITATION_KNOCKOUT 32

#define INCAPACITATION_KNOCKDOWN (INCAPACITATION_KNOCKOUT|INCAPACITATION_FORCELYING)
#define INCAPACITATION_DISABLED (INCAPACITATION_KNOCKDOWN|INCAPACITATION_STUNNED)
#define INCAPACITATION_DEFAULT (INCAPACITATION_RESTRAINED|INCAPACITATION_BUCKLED_FULLY|INCAPACITATION_DISABLED)
#define INCAPACITATION_ALL (~INCAPACITATION_NONE)

// Organs.
#define BP_MOUTH    "mouth"
#define BP_EYES     "eyes"
#define BP_HEART    "heart"
#define BP_LUNGS    "lungs"
#define BP_TRACH	"tracheae"
#define BP_BRAIN    "brain"
#define BP_LIVER    "liver"
#define BP_KIDNEYS  "kidneys"
#define BP_PLASMA   "plasma vessel"
#define BP_APPENDIX "appendix"
#define BP_CELL     "cell"
#define BP_HIVE     "hive node"
#define BP_NUTRIENT "nutrient vessel"
#define BP_ACID     "acid gland"
#define BP_EGG      "egg sac"
#define BP_RESIN    "resin spinner"
#define BP_STRATA   "neural strata"
#define BP_RESPONSE "response node"
#define BP_GBLADDER "gas bladder"
#define BP_POLYP    "polyp segment"
#define BP_ANCHOR   "anchoring ligament"
#define BP_PHORON   "phoron filter"
#define BP_ACETONE  "acetone reactor"

// Robo Organs.
#define BP_POSIBRAIN	"posibrain"
#define BP_VOICE		"vocal synthesiser"
#define BP_STACK		"stack"
#define BP_OPTICS		"optics"
#define BP_FLOAT		"floatation disc"
#define BP_JETS			"maneuvering jets"
#define BP_COOLING_FINS "cooling fins"

//Augmetations
#define BP_AUGMENT_R_ARM         "right arm augment"
#define BP_AUGMENT_L_ARM         "left arm augment"
#define BP_AUGMENT_R_HAND        "right hand augment"
#define BP_AUGMENT_L_HAND        "left hand augment"
#define BP_AUGMENT_R_LEG         "right leg augment"
#define BP_AUGMENT_L_LEG         "left leg augment"
#define BP_AUGMENT_CHEST_ARMOUR   "chest armor augment"
#define BP_AUGMENT_CHEST_ACTIVE  "active chest augment"
#define BP_AUGMENT_HEAD           "head augment"

//Augment flags
#define AUGMENTATION_MECHANIC 1
#define AUGMENTATION_ORGANIC  2


// Limbs.
#define BP_L_FOOT "l_foot"
#define BP_R_FOOT "r_foot"
#define BP_L_LEG  "l_leg"
#define BP_R_LEG  "r_leg"
#define BP_L_HAND "l_hand"
#define BP_R_HAND "r_hand"
#define BP_L_ARM  "l_arm"
#define BP_R_ARM  "r_arm"
#define BP_HEAD   "head"
#define BP_CHEST  "chest"
#define BP_GROIN  "groin"
#define BP_ALL_LIMBS list(BP_CHEST, BP_GROIN, BP_HEAD, BP_L_ARM, BP_R_ARM, BP_L_HAND, BP_R_HAND, BP_L_LEG, BP_R_LEG, BP_L_FOOT, BP_R_FOOT)
#define BP_BY_DEPTH list(BP_HEAD, BP_L_HAND, BP_R_HAND, BP_L_ARM, BP_R_ARM, BP_L_FOOT, BP_R_FOOT, BP_L_LEG, BP_R_LEG, BP_GROIN, BP_CHEST)

// Prosthetic helpers.
#define BP_IS_ROBOTIC(org)  (org.status & ORGAN_ROBOTIC)
#define BP_IS_ASSISTED(org) (org.status & ORGAN_ASSISTED)
#define BP_IS_BRITTLE(org)  (org.status & ORGAN_BRITTLE)
#define BP_IS_CRYSTAL(org)  (org.status & ORGAN_CRYSTAL)

#define SYNTH_BLOOD_COLOUR "#030303"
#define SYNTH_FLESH_COLOUR "#575757"

#define MOB_PULL_NONE 0
#define MOB_PULL_SMALLER 1
#define MOB_PULL_SAME 2
#define MOB_PULL_LARGER 3

//carbon taste sensitivity defines, used in mob/living/carbon/proc/ingest
#define TASTE_HYPERSENSITIVE 3 //anything below 5%
#define TASTE_SENSITIVE 2 //anything below 7%
#define TASTE_NORMAL 1 //anything below 15%
#define TASTE_DULL 0.5 //anything below 30%
#define TASTE_NUMB 0.1 //anything below 150%

//Used by show_message() and emotes
#define VISIBLE_MESSAGE 1
#define AUDIBLE_MESSAGE 2

//used for getting species temp values
#define COLD_LEVEL_1 -1
#define COLD_LEVEL_2 -2
#define COLD_LEVEL_3 -3
#define HEAT_LEVEL_1 1
#define HEAT_LEVEL_2 2
#define HEAT_LEVEL_3 3

//Synthetic human temperature vals
#define SYNTH_COLD_LEVEL_1 50
#define SYNTH_COLD_LEVEL_2 -1
#define SYNTH_COLD_LEVEL_3 -1
#define SYNTH_HEAT_LEVEL_1 500
#define SYNTH_HEAT_LEVEL_2 1000
#define SYNTH_HEAT_LEVEL_3 2000

#define CORPSE_CAN_REENTER 1
#define CORPSE_CAN_REENTER_AND_RESPAWN 2

#define SPECIES_HUMAN       "Human"
#define SPECIES_DIONA       "Diona"
#define SPECIES_VOX         "Vox"
#define SPECIES_IPC         "Machine"
#define SPECIES_UNATHI      "Unathi"
#define SPECIES_SKRELL      "Skrell"
#define SPECIES_NABBER      "giant armoured serpentid"
#define SPECIES_PROMETHEAN  "Promethean"
#define SPECIES_XENO        "Xenophage"
#define SPECIES_ALIEN       "Humanoid"
#define SPECIES_ADHERENT    "Adherent"
#define SPECIES_GOLEM       "Golem"
#define SPECIES_YEOSA       "Yeosa'Unathi"

#define SURGERY_CLOSED 0
#define SURGERY_OPEN 1
#define SURGERY_RETRACTED 2
#define SURGERY_ENCASED 3

#define STASIS_MISC     "misc"
#define STASIS_CRYOBAG  "cryobag"
#define STASIS_COLD     "cold"

#define AURA_CANCEL 1
#define AURA_FALSE  2
#define AURA_TYPE_BULLET "Bullet"
#define AURA_TYPE_WEAPON "Weapon"
#define AURA_TYPE_THROWN "Thrown"
#define AURA_TYPE_LIFE   "Life"

#define SPECIES_BLOOD_DEFAULT 560

#define SLIME_EVOLUTION_THRESHOLD 10

//Used in mob/proc/get_input
#define MOB_INPUT_TEXT "text"
#define MOB_INPUT_MESSAGE "message"
#define MOB_INPUT_NUM "num"

#define MOB_CLIMB_TIME_SMALL 30
#define MOB_CLIMB_TIME_MEDIUM 50

#define MOB_FACTION_NEUTRAL "neutral"

//############CULTURE
#define TAG_CULTURE   "culture"
#define TAG_EDUCATION "education"
#define TAG_HOMEWORLD "home_system"
#define TAG_FACTION   "faction"
#define TAG_RELIGION  "religion"

#define ALL_CULTURAL_TAGS list( \
	TAG_CULTURE =   "Culture", \
	TAG_EDUCATION = "Education", \
	TAG_HOMEWORLD = "Residence", \
	TAG_FACTION =   "Faction", \
	TAG_RELIGION =  "Beliefs" \
	)

// Cultural IDs.
#define EDUCATION_NONE         "None"
#define EDUCATION_DROPOUT      "Dropout"
#define EDUCATION_HIGH_SCHOOL  "High School"
#define EDUCATION_TRADE_SCHOOL "Trade School"
#define EDUCATION_UNDERGRAD    "Bachelor's Degree"
#define EDUCATION_MASTERS      "Master's Degree"
#define EDUCATION_DOCTORATE    "Doctorate"
#define EDUCATION_MEDSCHOOL    "Medical Degree"

#define FACTION_SOL_CENTRAL    "Sol Central Government"
#define FACTION_TERRAN_CONFED  "Terran Colonial Confederation"
#define FACTION_NANOTRASEN     "NanoTrasen"
#define FACTION_FREETRADE      "Free Trade Union"
#define FACTION_HEPHAESTUS     "Hephaestus Industries"
#define FACTION_XYNERGY        "Xynergy"
#define FACTION_FLEET          "SCG Fleet"
#define FACTION_EXPEDITIONARY  "Expeditionary Corps"
#define FACTION_PCRC           "Proxima Centauri Risk Control"
#define FACTION_CORPORATE       "Expeditionary Corps Organisation"
#define FACTION_DAIS           "Deimos Advanced Information Systems"
#define FACTION_OTHER          "Other Faction"
#define FACTION_TEST_SUBJECTS  "Test Subjects"

#define HOME_SYSTEM_EARTH      "Earth"
#define HOME_SYSTEM_LUNA       "Luna"
#define HOME_SYSTEM_MARS       "Mars"
#define HOME_SYSTEM_VENUS      "Venus"
#define HOME_SYSTEM_CERES      "Ceres"
#define HOME_SYSTEM_PLUTO      "Pluto"
#define HOME_SYSTEM_TAU_CETI   "Ceti Epsilon"
#define HOME_SYSTEM_HELIOS	   "Eos"
#define HOME_SYSTEM_TERRA 	   "Terra"
#define HOME_SYSTEM_TERSTEN    "Tersten"
#define HOME_SYSTEM_LORRIMAN   "Lorriman"
#define HOME_SYSTEM_CINU       "Cinu"
#define HOME_SYSTEM_YUKLID     "Yuklid V"
#define HOME_SYSTEM_LORDANIA   "Lordania"
#define HOME_SYSTEM_KINGSTON   "Kingston"
#define HOME_SYSTEM_GAIA       "Gaia"
#define HOME_SYSTEM_STATELESS  "Stateless"
#define HOME_SYSTEM_OTHER      "Other System"
#define HOME_SYSTEM_DEEP_SPACE "Deep Space"

#define CULTURE_OTHER          "Other Culture"
#define CULTURE_HUMAN          "Humankind"
#define CULTURE_HUMAN_VATGROWN "Nonborn"
#define CULTURE_HUMAN_MARTIAN  "Martian, Surfacer"
#define CULTURE_HUMAN_MARSTUN  "Martian, Tunneller"
#define CULTURE_HUMAN_LUNAPOOR "Luna, Lower Class"
#define CULTURE_HUMAN_LUNARICH "Luna, Upper Class"
#define CULTURE_HUMAN_VENUSIAN "Venusian, Zoner"
#define CULTURE_HUMAN_VENUSLOW "Venusian, Surfacer"
#define CULTURE_HUMAN_BELTER   "Belter, Ceres"
#define CULTURE_HUMAN_PLUTO    "Plutonian"
#define CULTURE_HUMAN_EARTH    "Earther"
#define CULTURE_HUMAN_CETI     "Cetite"
#define CULTURE_HUMAN_SPACER   "Spacer, Core Systems"
#define CULTURE_HUMAN_SPAFRO   "Spacer, Frontier Systems"
#define CULTURE_HUMAN_CONFED   "Terran"
#define CULTURE_HUMAN_OTHER    "Other, Humanity"
#define CULTURE_STARLIGHT      "Starlit Realms"
#define CULTURE_MONKEY         "Monkey Business"
#define CULTURE_FARWA          "Farwa Business"
#define CULTURE_NEARA          "Neara Business"
#define CULTURE_STOK           "Stok Business"
#define CULTURE_ALIUM          "Mysterious Aliens"
#define CULTURE_CULTIST        "Blood Cult"

#define RELIGION_OTHER         "Other Religion"
#define RELIGION_JUDAISM       "Judaism"
#define RELIGION_HINDUISM      "Hinduism"
#define RELIGION_BUDDHISM      "Buddhism"
#define RELIGION_ISLAM         "Islam"
#define RELIGION_CHRISTIANITY  "Christianity"
#define RELIGION_AGNOSTICISM   "Agnosticism"
#define RELIGION_DEISM         "Deism"
#define RELIGION_ATHEISM       "Atheism"
#define RELIGION_THELEMA       "Thelema"
#define RELIGION_SPIRITUALISM  "Spiritualism"

// Skrellian cultures.
#define CULTURE_SKRELL_QERR     "Qerr-Katish"
#define CULTURE_SKRELL_MALISH   "Malish-Katish"
#define CULTURE_SKRELL_KANIN    "Kanin-Katish"
#define CULTURE_SKRELL_TALUM    "Talum-Katish"
#define CULTURE_SKRELL_RASKINTA "Raskinta-Katish"

#define HOME_SYSTEM_QERRBALAK  "Qerrbalak"

// Adherent cultures.
#define CULTURE_ADHERENT             "The Vigil"

#define HOME_SYSTEM_ADHERENT         "Canon"
#define HOME_SYSTEM_ADHERENT_MOURNER "Monument World"

#define FACTION_ADHERENT_PRESERVERS  "Preservers"
#define FACTION_ADHERENT_LOYALISTS   "Loyalists"
#define FACTION_ADHERENT_SEPARATISTS "Seperatists"

// Vox cultures.
#define CULTURE_VOX_ARKSHIP    "Arkship Crew"
#define CULTURE_VOX_SALVAGER   "Salvager Crew"
#define CULTURE_VOX_RAIDER     "Raider Crew"

#define HOME_SYSTEM_VOX_ARK    "Ark-Dweller"
#define HOME_SYSTEM_VOX_SHROUD "Shroud-Dweller"
#define HOME_SYSTEM_VOX_SHIP   "Ship-Dweller"

#define FACTION_VOX_RAIDER     "Raider"
#define FACTION_VOX_CREW       "Ark Labourer"
#define FACTION_VOX_APEX       "Apex Servant"

#define RELIGION_VOX           "Auralis Reverence"

// IPC cultures.
#define CULTURE_POSITRONICS    "Union Member"

#define HOME_SYSTEM_ROOT       "Root"

#define FACTION_POSITRONICS    "Positronic Union"

// Diona cultures.
#define CULTURE_DIONA          "Diona Chorus"

#define HOME_SYSTEM_DIONAEA    "Epsilon Ursae Minoris"

// Serpentid cultures.
#define CULTURE_SERPENTID      "Serpentid Labourer"

#define HOME_SYSTEM_SERPENTIDS "Tau-Wilo"

// Unathi cultures.
#define CULTURE_UNATHI              "Moghes Hegemony"

#define HOME_SYSTEM_MOGHES          "Moghes"

#define FACTION_UNATHI_POLAR        "Polar Clans"
#define FACTION_UNATHI_DESERT       "Desert Clans"
#define FACTION_UNATHI_SAVANNAH     "Savannah Clans"
#define FACTION_UNATHI_DIAMOND_PEAK "Diamond Peak Clans"
#define FACTION_UNATHI_SALT_SWAMP   "Salt Swamp Clans"
#define FACTION_UNATHI_YEOSA		"Yeosa Clans"

#define RELIGION_UNATHI_STRATAGEM    "Grand Stratagem"
#define RELIGION_UNATHI_PRECURSOR    "Precursor"
#define RELIGION_UNATHI_VINE         "Hand of the Vine"
#define RELIGION_UNATHI_LIGHTS       "The Fruitful Lights"

// Xenophage cultures.
#define CULTURE_XENOPHAGE_D    "Xenophage Drone"
#define CULTURE_XENOPHAGE_H    "Xenophage Hunter"
#define CULTURE_XENOPHAGE_S    "Xenophage Sentinel"
#define CULTURE_XENOPHAGE_Q    "Xenophage Queen"
#define FACTION_XENOPHAGE      "Xenophage Hive"

// Other culture values.
#define EDUCATION_TIER_NONE      0
#define EDUCATION_TIER_DROPOUT   1
#define EDUCATION_TIER_BASIC     2
#define EDUCATION_TIER_TRADE     3
#define EDUCATION_TIER_BACHELOR  4
#define EDUCATION_TIER_MASTERS   5
#define EDUCATION_TIER_DOCTORATE 6
#define EDUCATION_TIER_MEDSCHOOL 7

// Nabber grades.
#define EDUCATION_NABBER_CMINUS "Grade C-"
#define EDUCATION_NABBER_C      "Grade C"
#define EDUCATION_NABBER_CPLUS  "Grade C+"
#define EDUCATION_NABBER_BMINUS "Grade B-"
#define EDUCATION_NABBER_B      "Grade B"
#define EDUCATION_NABBER_BPLUS  "Grade B+"
#define EDUCATION_NABBER_AMINUS "Grade A-"
#define EDUCATION_NABBER_A      "Grade A"
#define EDUCATION_NABBER_APLUS  "Grade A+"

// Skrellian educmacation.
#define EDUCATION_SKRELL_FAILURE      "Qlor-Mog"
#define EDUCATION_SKRELL_BASIC        "Qrri-Mog"
#define EDUCATION_SKRELL_FULL         "Qerr-Mog"
#define EDUCATION_SKRELL_FULL_SCIENCE "Qerr-Mog, Science Focus"
#define EDUCATION_SKRELL_FULL_DOCTOR  "Qerr-Mog, Medicine Focus"

//###################SPECIES
// Species flags.
#define SPECIES_FLAG_NO_MINOR_CUT        0x0001  // Can step on broken glass with no ill-effects. Either thick skin (diona/vox), cut resistant (slimes) or incorporeal (shadows)
#define SPECIES_FLAG_IS_PLANT            0x0002  // Is a treeperson.
#define SPECIES_FLAG_NO_SCAN             0x0004  // Cannot be scanned in a DNA machine/genome-stolen.
#define SPECIES_FLAG_NO_PAIN             0x0008  // Cannot suffer halloss/recieves deceptive health indicator.
#define SPECIES_FLAG_NO_SLIP             0x0010  // Cannot fall over.
#define SPECIES_FLAG_NO_POISON           0x0020  // Cannot not suffer toxloss.
#define SPECIES_FLAG_NO_EMBED            0x0040  // Can step on broken glass with no ill-effects and cannot have shrapnel embedded in it.
#define SPECIES_FLAG_NO_TANGLE           0x0080  // This species wont get tangled up in weeds
#define SPECIES_FLAG_NO_BLOCK            0x0100  // Unable to block or defend itself from attackers.
#define SPECIES_FLAG_NEED_DIRECT_ABSORB  0x0200  // This species can only have their DNA taken by direct absorption.

// unused: 0x8000 - higher than this will overflow

// Species spawn flags
#define SPECIES_IS_WHITELISTED      0x1    // Must be whitelisted to play.
#define SPECIES_IS_RESTRICTED       0x2    // Is not a core/normally playable species. (castes, mutantraces)
#define SPECIES_CAN_JOIN            0x4    // Species is selectable in chargen.
#define SPECIES_NO_FBP_CONSTRUCTION 0x8    // FBP of this species can't be made in-game.
#define SPECIES_NO_FBP_CHARGEN      0x10   // FBP of this species can't be selected at chargen.
#define SPECIES_NO_LACE             0x20   // This species can't have a neural lace.

// Species appearance flags
#define HAS_SKIN_TONE_NORMAL                                                      0x1    // Skin tone selectable in chargen for baseline humans (0-220)
#define HAS_SKIN_COLOR                                                            0x2    // Skin colour selectable in chargen. (RGB)
#define HAS_LIPS                                                                  0x4    // Lips are drawn onto the mob icon. (lipstick)
#define HAS_UNDERWEAR                                                             0x8    // Underwear is drawn onto the mob icon.
#define HAS_EYE_COLOR                                                             0x10   // Eye colour selectable in chargen. (RGB)
#define HAS_HAIR_COLOR                                                            0x20   // Hair colour selectable in chargen. (RGB)
#define RADIATION_GLOWS                                                           0x40   // Radiation causes this character to glow.
#define HAS_SKIN_TONE_GRAV                                                        0x80   // Skin tone selectable in chargen for grav-adapted humans (0-100)
#define HAS_SKIN_TONE_SPCR                                                        0x100  // Skin tone selectable in chargen for spacer humans (0-165)
#define HAS_SKIN_TONE_TRITON                                                      0x200
#define HAS_BASE_SKIN_COLOURS                                                     0x400  // Has multiple base skin sprites to go off of
#define HAS_A_SKIN_TONE (HAS_SKIN_TONE_NORMAL | HAS_SKIN_TONE_GRAV | HAS_SKIN_TONE_SPCR | HAS_SKIN_TONE_TRITON) // Species has a numeric skintone

// Skin Defines
#define SKIN_NORMAL 0
#define SKIN_THREAT 1

// Darkvision Levels these are inverted from normal so pure white is the darkest
// possible and pure black is none
#define DARKTINT_NONE      "#ffffff"
#define DARKTINT_MODERATE  "#f9f9f5"
#define DARKTINT_GOOD      "#ebebe6"


//################LANGUEAGE

// Languages.
#define LANGUAGE_GALCOM         "Galactic Common"
#define LANGUAGE_EAL            "Encoded Audio Language"
#define LANGUAGE_SOL_COMMON     "Sol Common"
#define LANGUAGE_UNATHI         "Sinta'unathi"
#define LANGUAGE_SKRELLIAN      "Skrellian"
#define LANGUAGE_ROOTLOCAL      "Local Rootspeak"
#define LANGUAGE_ROOTGLOBAL     "Global Rootspeak"
#define LANGUAGE_LUNAR          "Selenian"
#define LANGUAGE_GUTTER         "Gutter"
#define LANGUAGE_CULT           "Cult"
#define LANGUAGE_SIGN           "Sign Language"
#define LANGUAGE_INDEPENDENT    "Independent"
#define LANGUAGE_NABBER         "Serpentid"
#define LANGUAGE_SPACER         "Spacer"
#define LANGUAGE_ALIUM          "Alium"
#define LANGUAGE_OCCULT         "Occult"
#define LANGUAGE_ADHERENT       "Protocol"
#define LANGUAGE_VOX            "Vox-pidgin"
#define LANGUAGE_XENOPHAGE      "Xenophage"
#define LANGUAGE_XENOPHAGE_HIVE "Hivemind"
#define LANGUAGE_YEOSA          "Yeosa'unathi"

// Language flags.
#define WHITELISTED  1   // Language is available if the speaker is whitelisted.
#define RESTRICTED   2   // Language can only be acquired by spawning or an admin.
#define NONVERBAL    4   // Language has a significant non-verbal component. Speech is garbled without line-of-sight.
#define SIGNLANG     8   // Language is completely non-verbal. Speech is displayed through emotes for those who can understand.
#define HIVEMIND     16  // Broadcast to all mobs with this language.
#define NONGLOBAL    32  // Do not add to general languages list.
#define INNATE       64  // All mobs can be assumed to speak and understand this language. (audible emotes)
#define NO_TALK_MSG  128 // Do not show the "\The [speaker] talks into \the [radio]" message
#define NO_STUTTER   256 // No stuttering, slurring, or other speech problems
#define ALT_TRANSMIT 512 // Language is not based on vision or sound (Todo: add this into the say code and use it for the rootspeak languages)


//#####################CLIENT
#define CLIENT_MIN_FPS 0
#define CLIENT_MAX_FPS 1000

//########################MOVEMENT
#define HAS_TRANSFORMATION_MOVEMENT_HANDLER(X) X.HasMovementHandler(/datum/movement_handler/mob/transformation)
#define ADD_TRANSFORMATION_MOVEMENT_HANDLER(X) X.AddMovementHandler(/datum/movement_handler/mob/transformation)
#define DEL_TRANSFORMATION_MOVEMENT_HANDLER(X) X.RemoveMovementHandler(/datum/movement_handler/mob/transformation)

#define MOVING_DELIBERATELY(X) (X.move_intent.flags & MOVE_INTENT_DELIBERATE)
#define MOVING_QUICKLY(X) (X.move_intent.flags & MOVE_INTENT_QUICK)


//######################FLAGS
GLOBAL_LIST_INIT(bitflags, list(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768))

#define CLOSET_HAS_LOCK  1
#define CLOSET_CAN_BE_WELDED 2

#define CLOSET_STORAGE_MISC       1
#define CLOSET_STORAGE_ITEMS      2
#define CLOSET_STORAGE_MOBS       4
#define CLOSET_STORAGE_STRUCTURES 8
#define CLOSET_STORAGE_ALL   (~0)

// Flags bitmasks.

#define ATOM_FLAG_CHECKS_BORDER          0x0001 // If a dense atom (potentially) only blocks movements from a given direction, i.e. window panes
#define ATOM_FLAG_CLIMBABLE              0x0002 // This object can be climbed on
#define ATOM_FLAG_NO_BLOOD               0x0004 // Used for items if they don't want to get a blood overlay.
#define ATOM_FLAG_NO_REACT               0x0008 // Reagents don't react inside this container.
#define ATOM_FLAG_OPEN_CONTAINER         0x0010 // Is an open container for chemistry purposes.
#define ATOM_FLAG_INITIALIZED            0x0020 // Has this atom been initialized

#define MOVABLE_FLAG_PROXMOVE            0x0001 // Does this object require proximity checking in Enter()?

#define OBJ_FLAG_ANCHORABLE              0x0001 // This object can be stuck in place with a tool
#define OBJ_FLAG_CONDUCTIBLE             0x0002 // Conducts electricity. (metal etc.)

#define MOB_FLAG_HOLY_BAD                0x001  // If this mob is allergic to holiness

//Flags for items (equipment)
#define ITEM_FLAG_NO_BLUDGEON            0x0001 // When an item has this it produces no "X has been hit by Y with Z" message with the default handler.
#define ITEM_FLAG_PHORONGUARD            0x0002 // Does not get contaminated by phoron.
#define ITEM_FLAG_NO_PRINT               0x0004 // This object does not leave the user's prints/fibres when using it
#define ITEM_FLAG_THICKMATERIAL          0x0010 // Prevents syringes, reagent pens, and hyposprays if equiped to slot_suit or slot_head.
#define ITEM_FLAG_STOPPRESSUREDAMAGE     0x0020 // Counts towards pressure protection. Note that like temperature protection, body_parts_covered is considered here as well.
#define ITEM_FLAG_AIRTIGHT               0x0040 // Functions with internals.
#define ITEM_FLAG_NOSLIP                 0x0080 // Prevents from slipping on wet floors, in space, etc.
#define ITEM_FLAG_BLOCK_GAS_SMOKE_EFFECT 0x0100 // Blocks the effect that chemical clouds would have on a mob -- glasses, mask and helmets ONLY! (NOTE: flag shared with ONESIZEFITSALL)
#define ITEM_FLAG_FLEXIBLEMATERIAL       0x0200 // At the moment, masks with this flag will not prevent eating even if they are covering your face.
#define ITEM_FLAG_PREMODIFIED            0x0400 // Gloves that are clipped by default
#define ITEM_FLAG_IS_BELT                0x0800 // Items that can be worn on the belt slot, even with no undersuit equipped
#define ITEM_FLAG_SILENT                 0x1000 // sneaky shoes
#define ITEM_FLAG_NOCUFFS                0x2000 // Gloves that have this flag prevent cuffs being applied

// Flags for pass_flags.
#define PASS_FLAG_TABLE  0x1
#define PASS_FLAG_GLASS  0x2
#define PASS_FLAG_GRILLE 0x4

//#################ITEMS_SLOTHING

#define HUMAN_STRIP_DELAY        40   // Takes 40ds = 4s to strip someone.

#define CANDLE_LUM 3 // For how bright candles are.

// Item inventory slot bitmasks.
#define SLOT_OCLOTHING  0x1
#define SLOT_ICLOTHING  0x2
#define SLOT_GLOVES     0x4
#define SLOT_EYES       0x8
#define SLOT_EARS       0x10
#define SLOT_MASK       0x20
#define SLOT_HEAD       0x40
#define SLOT_FEET       0x80
#define SLOT_ID         0x100
#define SLOT_BELT       0x200
#define SLOT_BACK       0x400
#define SLOT_POCKET     0x800  // This is to allow items with a w_class of 3 or 4 to fit in pockets.
#define SLOT_DENYPOCKET 0x1000  // This is to  deny items with a w_class of 2 or 1 from fitting in pockets.
#define SLOT_TWOEARS    0x2000
#define SLOT_TIE        0x4000
#define SLOT_HOLSTER	0x8000 //16th bit - higher than this will overflow

#define ACCESSORY_SLOT_UTILITY  "Utility"
#define ACCESSORY_SLOT_ARMBAND  "Armband"
#define ACCESSORY_SLOT_RANK     "Rank"
#define ACCESSORY_SLOT_DEPT		"Department"
#define ACCESSORY_SLOT_DECOR    "Decor"
#define ACCESSORY_SLOT_MEDAL    "Medal"
#define ACCESSORY_SLOT_INSIGNIA "Insignia"
#define ACCESSORY_SLOT_ARMOR_C  "Chest armor"
#define ACCESSORY_SLOT_ARMOR_A  "Arm armor"
#define ACCESSORY_SLOT_ARMOR_L  "Leg armor"
#define ACCESSORY_SLOT_ARMOR_S  "Armor storage"
#define ACCESSORY_SLOT_ARMOR_M  "Misc armor"
#define ACCESSORY_SLOT_HELM_C	"Helmet cover"

// Bitmasks for the flags_inv variable. These determine when a piece of clothing hides another, i.e. a helmet hiding glasses.
// WARNING: The following flags apply only to the external suit!
#define HIDEGLOVES      0x1
#define HIDESUITSTORAGE 0x2
#define HIDEJUMPSUIT    0x4
#define HIDESHOES       0x8
#define HIDETAIL        0x10

// WARNING: The following flags apply only to the helmets and masks!
#define HIDEMASK 0x1
#define HIDEEARS 0x2 // Headsets and such.
#define HIDEEYES 0x4 // Glasses.
#define HIDEFACE 0x8 // Dictates whether we appear as "Unknown".

#define BLOCKHEADHAIR   0x20    // Hides the user's hair overlay. Leaves facial hair.
#define BLOCKHAIR       0x40    // Hides the user's hair, facial and otherwise.

// Slots.
#define slot_first       1
#define slot_back        1
#define slot_wear_mask   2
#define slot_handcuffed  3
#define slot_l_hand      4
#define slot_r_hand      5
#define slot_belt        6
#define slot_wear_id     7
#define slot_l_ear       8
#define slot_glasses     9
#define slot_gloves      10
#define slot_head        11
#define slot_shoes       12
#define slot_wear_suit   13
#define slot_w_uniform   14
#define slot_l_store     15
#define slot_r_store     16
#define slot_s_store     17
#define slot_in_backpack 18
#define slot_legcuffed   19
#define slot_r_ear       20
#define slot_legs        21
#define slot_tie         22
#define slot_last        22

// Inventory slot strings.
// since numbers cannot be used as associative list keys.
//icon_back, icon_l_hand, etc would be much better names for these...
#define slot_back_str		"slot_back"
#define slot_l_hand_str		"slot_l_hand"
#define slot_r_hand_str		"slot_r_hand"
#define slot_w_uniform_str	"slot_w_uniform"
#define slot_head_str		"slot_head"
#define slot_wear_suit_str	"slot_suit"
#define slot_l_ear_str      "slot_l_ear"
#define slot_r_ear_str      "slot_r_ear"
#define slot_belt_str       "slot_belt"
#define slot_shoes_str      "slot_shoes"
#define slot_head_str      	"slot_head"
#define slot_wear_mask_str 	"slot_wear_mask"
#define slot_handcuffed_str "slot_handcuffed"
#define slot_legcuffed_str "slot_legcuffed"
#define slot_wear_mask_str 	"slot_wear_mask"
#define slot_wear_id_str  	"slot_wear_id"
#define slot_gloves_str  	"slot_gloves"
#define slot_glasses_str  	"slot_glasses"
#define slot_s_store_str	"slot_s_store"
#define slot_tie_str		"slot_tie"

// Bitflags for clothing parts.
#define HEAD        0x1
#define FACE        0x2
#define EYES        0x4
#define UPPER_TORSO 0x8
#define LOWER_TORSO 0x10
#define LEG_LEFT    0x20
#define LEG_RIGHT   0x40
#define LEGS        0x60   //  LEG_LEFT | LEG_RIGHT
#define FOOT_LEFT   0x80
#define FOOT_RIGHT  0x100
#define FEET        0x180  // FOOT_LEFT | FOOT_RIGHT
#define ARM_LEFT    0x200
#define ARM_RIGHT   0x400
#define ARMS        0x600 //  ARM_LEFT | ARM_RIGHT
#define HAND_LEFT   0x800
#define HAND_RIGHT  0x1000
#define HANDS       0x1800 // HAND_LEFT | HAND_RIGHT
#define FULL_BODY   0xFFFF

// Bitflags for the percentual amount of protection a piece of clothing which covers the body part offers.
// Used with human/proc/get_heat_protection() and human/proc/get_cold_protection().
// The values here should add up to 1, e.g., the head has 30% protection.
#define THERMAL_PROTECTION_HEAD        0.3
#define THERMAL_PROTECTION_UPPER_TORSO 0.15
#define THERMAL_PROTECTION_LOWER_TORSO 0.15
#define THERMAL_PROTECTION_LEG_LEFT    0.075
#define THERMAL_PROTECTION_LEG_RIGHT   0.075
#define THERMAL_PROTECTION_FOOT_LEFT   0.025
#define THERMAL_PROTECTION_FOOT_RIGHT  0.025
#define THERMAL_PROTECTION_ARM_LEFT    0.075
#define THERMAL_PROTECTION_ARM_RIGHT   0.075
#define THERMAL_PROTECTION_HAND_LEFT   0.025
#define THERMAL_PROTECTION_HAND_RIGHT  0.025

// Pressure limits.
#define  HAZARD_HIGH_PRESSURE 550 // This determines at what pressure the ultra-high pressure red icon is displayed. (This one is set as a constant)
#define WARNING_HIGH_PRESSURE 325 // This determines when the orange pressure icon is displayed (it is 0.7 * HAZARD_HIGH_PRESSURE)
#define WARNING_LOW_PRESSURE  50  // This is when the gray low pressure icon is displayed. (it is 2.5 * HAZARD_LOW_PRESSURE)
#define  HAZARD_LOW_PRESSURE  20  // This is when the black ultra-low pressure icon is displayed. (This one is set as a constant)

#define TEMPERATURE_DAMAGE_COEFFICIENT  1.5 // This is used in handle_temperature_damage() for humans, and in reagents that affect body temperature. Temperature damage is multiplied by this amount.
#define BODYTEMP_AUTORECOVERY_DIVISOR   12  // This is the divisor which handles how much of the temperature difference between the current body temperature and 310.15K (optimal temperature) humans auto-regenerate each tick. The higher the number, the slower the recovery. This is applied each tick, so long as the mob is alive.
#define BODYTEMP_AUTORECOVERY_MINIMUM   1   // Minimum amount of kelvin moved toward 310.15K per tick. So long as abs(310.15 - bodytemp) is more than 50.
#define BODYTEMP_COLD_DIVISOR           6   // Similar to the BODYTEMP_AUTORECOVERY_DIVISOR, but this is the divisor which is applied at the stage that follows autorecovery. This is the divisor which comes into play when the human's loc temperature is lower than their body temperature. Make it lower to lose bodytemp faster.
#define BODYTEMP_HEAT_DIVISOR           6   // Similar to the BODYTEMP_AUTORECOVERY_DIVISOR, but this is the divisor which is applied at the stage that follows autorecovery. This is the divisor which comes into play when the human's loc temperature is higher than their body temperature. Make it lower to gain bodytemp faster.
#define BODYTEMP_COOLING_MAX           -30  // The maximum number of degrees that your body can cool down in 1 tick, when in a cold area.
#define BODYTEMP_HEATING_MAX            30  // The maximum number of degrees that your body can heat up in 1 tick,   when in a hot  area.

#define BODYTEMP_HEAT_DAMAGE_LIMIT 360.15 // The limit the human body can take before it starts taking damage from heat.
#define BODYTEMP_COLD_DAMAGE_LIMIT 260.15 // The limit the human body can take before it starts taking damage from coldness.

#define SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // What min_cold_protection_temperature is set to for space-helmet quality headwear. MUST NOT BE 0.
#define   SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // What min_cold_protection_temperature is set to for space-suit quality jumpsuits or suits. MUST NOT BE 0.
#define       HELMET_MIN_COLD_PROTECTION_TEMPERATURE 160 // For normal helmets.
#define        ARMOR_MIN_COLD_PROTECTION_TEMPERATURE 160 // For armor.
#define       GLOVES_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // For some gloves.
#define         SHOE_MIN_COLD_PROTECTION_TEMPERATURE 2.0 // For shoes.

#define  SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE 5000  // These need better heat protect, but not as good heat protect as firesuits.
#define    FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE 30000 // What max_heat_protection_temperature is set to for firesuit quality headwear. MUST NOT BE 0.
#define FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE 30000 // For fire-helmet quality items. (Red and white hardhats)
#define      HELMET_MAX_HEAT_PROTECTION_TEMPERATURE 600   // For normal helmets.
#define       ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE 600   // For armor.
#define      GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE 1500  // For some gloves.
#define        SHOE_MAX_HEAT_PROTECTION_TEMPERATURE 1500  // For shoes.

// Fire.
#define FIRE_MIN_STACKS          -20
#define FIRE_MAX_STACKS           25
#define FIRE_MAX_FIRESUIT_STACKS  20 // If the number of stacks goes above this firesuits won't protect you anymore. If not, you can walk around while on fire like a badass.

#define THROWFORCE_SPEED_DIVISOR    5  // The throwing speed value at which the throwforce multiplier is exactly 1.
#define THROWNOBJ_KNOCKBACK_SPEED   15 // The minumum speed of a w_class 2 thrown object that will cause living mobs it hits to be knocked back. Heavier objects can cause knockback at lower speeds.
#define THROWNOBJ_KNOCKBACK_DIVISOR 2  // Affects how much speed the mob is knocked back with.

// Suit sensor levels
#define SUIT_SENSOR_OFF      0
#define SUIT_SENSOR_BINARY   1
#define SUIT_SENSOR_VITAL    2
#define SUIT_SENSOR_TRACKING 3

#define SUIT_NO_SENSORS 0
#define SUIT_HAS_SENSORS 1
#define SUIT_LOCKED_SENSORS 2

// Hair Flags
#define VERY_SHORT 0x1
#define HAIR_TIEABLE 0x2

//flags to determine if an eyepiece is a hud.
#define HUD_SCIENCE 0x1
#define HUD_SECURITY 0x2
#define HUD_MEDICAL 0x4
#define HUD_JANITOR 0x8

// Storage

/*
	A note on w_classes - this is an attempt to describe the w_classes currently in use
	with an attempt at providing examples of the kinds of things that fit each w_class

	1 - tiny items - things like screwdrivers and pens, sheets of paper
	2 - small items - things that can fit in a pocket
	3 - normal items
	4 - large items - the largest things you can fit in a backpack
	5 - bulky items - backpacks are this size, for reference
	6 - human sized objects
	7 - things that are large enough to contain humans, like closets, but smaller than entire turfs
	8 - things that take up an entire turf, like wall girders or door assemblies
*/

var/list/default_onmob_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand.dmi',
		slot_belt_str = 'icons/mob/onmob/belt.dmi',
		slot_back_str = 'icons/mob/onmob/back.dmi',
		slot_l_ear_str = 'icons/mob/onmob/ears.dmi',
		slot_r_ear_str = 'icons/mob/onmob/ears.dmi',
		slot_glasses_str = 'icons/mob/onmob/eyes.dmi',
		slot_wear_id_str = 'icons/mob/onmob/id.dmi',
		slot_w_uniform_str = 'icons/mob/onmob/uniform.dmi',
		slot_wear_suit_str = 'icons/mob/onmob/suit.dmi',
		slot_head_str = 'icons/mob/onmob/head.dmi',
		slot_shoes_str = 'icons/mob/onmob/feet.dmi',
		slot_wear_mask_str = 'icons/mob/onmob/mask.dmi',
		slot_handcuffed_str = 'icons/mob/onmob/misc.dmi',
		slot_legcuffed_str = 'icons/mob/onmob/misc.dmi',
		slot_gloves_str = 'icons/mob/onmob/hands.dmi',
		slot_s_store_str = 'icons/mob/onmob/belt_mirror.dmi',
		slot_tie_str = 'icons/mob/onmob/ties.dmi'
		)

//#################MISC
#define DEBUG
// Turf-only flags.
#define TURF_FLAG_NOJAUNT 1 // This is used in literally one place, turf.dm, to block ethereal jaunt.
#define TURF_FLAG_NORUINS 2

#define TRANSITIONEDGE 7 // Distance from edge to move to another z-level.
#define RUIN_MAP_EDGE_PAD 15

// Invisibility constants.
#define INVISIBILITY_LIGHTING    20
#define INVISIBILITY_LEVEL_ONE   35
#define INVISIBILITY_LEVEL_TWO   45
#define INVISIBILITY_OBSERVER    60
#define INVISIBILITY_EYE         61
#define INVISIBILITY_SYSTEM      99

#define SEE_INVISIBLE_LIVING     25
#define SEE_INVISIBLE_NOLIGHTING 15
#define SEE_INVISIBLE_LEVEL_ONE  INVISIBILITY_LEVEL_ONE
#define SEE_INVISIBLE_LEVEL_TWO  INVISIBILITY_LEVEL_TWO
#define SEE_INVISIBLE_CULT       INVISIBILITY_OBSERVER
#define SEE_INVISIBLE_OBSERVER   INVISIBILITY_EYE
#define SEE_INVISIBLE_SYSTEM     INVISIBILITY_SYSTEM

#define SEE_IN_DARK_DEFAULT 2

#define SEE_INVISIBLE_MINIMUM 5
#define INVISIBILITY_MAXIMUM 100

// Some arbitrary defines to be used by self-pruning global lists. (see master_controller)
#define PROCESS_KILL 26 // Used to trigger removal from a processing list.

// For secHUDs and medHUDs and variants. The number is the location of the image on the list hud_list of humans.
#define      HEALTH_HUD 1 // A simple line rounding the mob's number health.
#define      STATUS_HUD 2 // Alive, dead, diseased, etc.
#define          ID_HUD 3 // The job asigned to your ID.
#define      WANTED_HUD 4 // Wanted, released, paroled, security status.
#define    IMPLOYAL_HUD 5 // Loyality implant.
#define     IMPCHEM_HUD 6 // Chemical implant.
#define    IMPTRACK_HUD 7 // Tracking implant.
#define SPECIALROLE_HUD 8 // AntagHUD image.
#define  STATUS_HUD_OOC 9 // STATUS_HUD without virus DB check for someone being ill.
#define 	  LIFE_HUD 10 // STATUS_HUD that only reports dead or alive

// Shuttle moving status.
#define SHUTTLE_IDLE      0
#define SHUTTLE_WARMUP    1
#define SHUTTLE_INTRANSIT 2

// Autodock shuttle processing status.
#define IDLE_STATE   0
#define WAIT_LAUNCH  1
#define FORCE_LAUNCH 2
#define WAIT_ARRIVE  3
#define WAIT_FINISH  4

// Setting this much higher than 1024 could allow spammers to DOS the server easily.
#define MAX_MESSAGE_LEN       1024
#define MAX_PAPER_MESSAGE_LEN 6144
#define MAX_BOOK_MESSAGE_LEN  18432
#define MAX_LNAME_LEN         64
#define MAX_NAME_LEN          26
#define MAX_DESC_LEN          128
#define MAX_TEXTFILE_LENGTH 128000		// 512GQ file

// Event defines.
#define EVENT_LEVEL_MUNDANE  1
#define EVENT_LEVEL_MODERATE 2
#define EVENT_LEVEL_MAJOR    3

//General-purpose life speed define for plants.
#define HYDRO_SPEED_MULTIPLIER 1

#define DEFAULT_JOB_TYPE /datum/job/assistant

//Area flags, possibly more to come
#define AREA_FLAG_RAD_SHIELDED      1 // shielded from radiation, clearly
#define AREA_FLAG_EXTERNAL          2 // External as in exposed to space, not outside in a nice, green, forest
#define AREA_FLAG_ION_SHIELDED      4 // shielded from ionospheric anomalies as an FBP / IPC
#define AREA_FLAG_IS_NOT_PERSISTENT 8 // SSpersistence will not track values from this area.

//Map template flags
#define TEMPLATE_FLAG_ALLOW_DUPLICATES 1 // Lets multiple copies of the template to be spawned
#define TEMPLATE_FLAG_SPAWN_GUARANTEED 2 // Makes it ignore away site budget and just spawn (only for away sites)
#define TEMPLATE_FLAG_CLEAR_CONTENTS   4 // if it should destroy objects it spawns on top of
#define TEMPLATE_FLAG_NO_RUINS         8 // if it should forbid ruins from spawning on top of it

// Convoluted setup so defines can be supplied by Bay12 main server compile script.
// Should still work fine for people jamming the icons into their repo.
#ifndef CUSTOM_ITEM_CONFIG
#define CUSTOM_ITEM_CONFIG "config/custom_items.txt"
#endif
#ifndef CUSTOM_ITEM_SYNTH_CONFIG
#define CUSTOM_ITEM_SYNTH_CONFIG "config/custom_sprites.txt"
#endif
#ifndef CUSTOM_ITEM_OBJ
#define CUSTOM_ITEM_OBJ 'icons/obj/custom_items_obj.dmi'
#endif
#ifndef CUSTOM_ITEM_MOB
#define CUSTOM_ITEM_MOB 'icons/mob/custom_items_mob.dmi'
#endif
#ifndef CUSTOM_ITEM_SYNTH
#define CUSTOM_ITEM_SYNTH 'icons/mob/custom_synthetic.dmi'
#endif

#define WALL_CAN_OPEN 1
#define WALL_OPENING 2

#define BOMBCAP_DVSTN_RADIUS (GLOB.max_explosion_range/4)
#define BOMBCAP_HEAVY_RADIUS (GLOB.max_explosion_range/2)
#define BOMBCAP_LIGHT_RADIUS GLOB.max_explosion_range
#define BOMBCAP_FLASH_RADIUS (GLOB.max_explosion_range*1.5)
									// NTNet module-configuration values. Do not change these. If you need to add another use larger number (5..6..7 etc)
#define NTNET_SOFTWAREDOWNLOAD 1 	// Downloads of software from NTNet
#define NTNET_PEERTOPEER 2			// P2P transfers of files between devices
#define NTNET_COMMUNICATION 3		// Communication (messaging)
#define NTNET_SYSTEMCONTROL 4		// Control of various systems, RCon, air alarm control, etc.

// NTNet transfer speeds, used when downloading/uploading a file/program.
#define NTNETSPEED_LOWSIGNAL 0.25	// GQ/s transfer speed when the device is wirelessly connected and on Low signal
#define NTNETSPEED_HIGHSIGNAL 0.5	// GQ/s transfer speed when the device is wirelessly connected and on High signal
#define NTNETSPEED_ETHERNET 1		// GQ/s transfer speed when the device is using wired connection
#define NTNETSPEED_DOS_AMPLIFICATION 5	// Multiplier for Denial of Service program. Resulting load on NTNet relay is this multiplied by NTNETSPEED of the device

// Program bitflags
#define PROGRAM_ALL 		0x1F
#define PROGRAM_CONSOLE 	0x1
#define PROGRAM_LAPTOP 		0x2
#define PROGRAM_TABLET 		0x4
#define PROGRAM_TELESCREEN 	0x8
#define PROGRAM_PDA 		0x10

#define PROGRAM_STATE_KILLED 0
#define PROGRAM_STATE_BACKGROUND 1
#define PROGRAM_STATE_ACTIVE 2

// Caps for NTNet logging. Less than 10 would make logging useless anyway, more than 500 may make the log browser too laggy. Defaults to 100 unless user changes it.
#define MAX_NTNET_LOGS 500
#define MIN_NTNET_LOGS 10

//Affects the chance that armour will block an attack. Should be between 0 and 1.
//If set to 0, then armor will always prevent the same amount of damage, always, with no randomness whatsoever.
//Of course, this will affect code that checks for blocked < 100, as blocked will be less likely to actually be 100.
#define ARMOR_BLOCK_CHANCE_MULT 1.0

// Special return values from bullet_act(). Positive return values are already used to indicate the blocked level of the projectile.
#define PROJECTILE_CONTINUE   -1 //if the projectile should continue flying after calling bullet_act()
#define PROJECTILE_FORCE_MISS -2 //if the projectile should treat the attack as a miss (suppresses attack and admin logs) - only applies to mobs.

//Camera capture modes
#define CAPTURE_MODE_REGULAR 0 //Regular polaroid camera mode
#define CAPTURE_MODE_ALL 1 //Admin camera mode
#define CAPTURE_MODE_PARTIAL 3 //Simular to regular mode, but does not do dummy check

//objectives
#define CONFIG_OBJECTIVE_NONE 2
#define CONFIG_OBJECTIVE_VERB 1
#define CONFIG_OBJECTIVE_ALL  0

// How many times an AI tries to connect to APC before switching to low power mode.
#define AI_POWER_RESTORE_MAX_ATTEMPTS 3

// AI power restoration routine steps.
#define AI_RESTOREPOWER_FAILED -1
#define AI_RESTOREPOWER_IDLE 0
#define AI_RESTOREPOWER_STARTING 1
#define AI_RESTOREPOWER_DIAGNOSTICS 2
#define AI_RESTOREPOWER_CONNECTING 3
#define AI_RESTOREPOWER_CONNECTED 4
#define AI_RESTOREPOWER_COMPLETED 5


// Values represented as Oxyloss. Can be tweaked, but make sure to use integers only.
#define AI_POWERUSAGE_LOWPOWER 1
#define AI_POWERUSAGE_RESTORATION 2
#define AI_POWERUSAGE_NORMAL 5
#define AI_POWERUSAGE_RECHARGING 7

// Above values get multiplied by this when converting AI oxyloss -> watts.
// For now, one oxyloss point equals 10kJ of energy, so normal AI uses 5 oxyloss per tick (50kW or 70kW if charging)
#define AI_POWERUSAGE_OXYLOSS_TO_WATTS_MULTIPLIER 10000

//Grid for Item Placement
#define CELLS 8								//Amount of cells per row/column in grid
#define CELLSIZE (world.icon_size/CELLS)	//Size of a cell in pixels

#define WORLD_ICON_SIZE 32
#define PIXEL_MULTIPLIER WORLD_ICON_SIZE/32

#define DEFAULT_SPAWNPOINT_ID "Default"

#define MIDNIGHT_ROLLOVER		864000	//number of deciseconds in a day

//Virus badness defines
#define VIRUS_MILD			1
#define VIRUS_COMMON		2	//Random events don't go higher (mutations aside)
#define VIRUS_ENGINEERED	3
#define VIRUS_EXOTIC		4	//Usually adminbus only

//Error handler defines
#define ERROR_USEFUL_LEN 2

#define RAD_LEVEL_LOW 0.5 // Around the level at which radiation starts to become harmful
#define RAD_LEVEL_MODERATE 5
#define RAD_LEVEL_HIGH 25
#define RAD_LEVEL_VERY_HIGH 75

#define RADIATION_THRESHOLD_CUTOFF 0.1	// Radiation will not affect a tile when below this value.

#define LEGACY_RECORD_STRUCTURE(X, Y) GLOBAL_LIST_EMPTY(##X);/datum/computer_file/data/##Y/var/list/fields[0];/datum/computer_file/data/##Y/New(){..();GLOB.##X.Add(src);}/datum/computer_file/data/##Y/Destroy(){. = ..();GLOB.##X.Remove(src);}

#define SUPPLY_SECURITY_ELEVATED 1
#define SUPPLY_SECURITY_HIGH 2

// secure gun authorization settings
#define UNAUTHORIZED      0
#define AUTHORIZED        1
#define ALWAYS_AUTHORIZED 2

// wrinkle states for clothes
#define WRINKLES_DEFAULT	0
#define WRINKLES_WRINKLY	1
#define WRINKLES_NONE		2

//detergent states for clothes
#define SMELL_DEFAULT	0
#define SMELL_CLEAN		1
#define SMELL_STINKY	2

//Shuttle mission stages
#define SHUTTLE_MISSION_PLANNED  1
#define SHUTTLE_MISSION_STARTED  2
#define SHUTTLE_MISSION_FINISHED 3
#define SHUTTLE_MISSION_QUEUED   4

//Built-in email accounts
#define EMAIL_DOCUMENTS "document.server@internal-services.net"
#define EMAIL_SYSADMIN  "admin@internal-services.net"
#define EMAIL_BROADCAST "broadcast@internal-services.net"

//Lying animation
#define ANIM_LYING_TIME 2


//################TOPIC
#define TOPIC_NOACTION 0
#define TOPIC_HANDLED 1
#define TOPIC_REFRESH 2

//#################GAMEMODES
#define GAME_STATE_PREGAME		1
#define GAME_STATE_SETTING_UP	2
#define GAME_STATE_PLAYING		3
#define GAME_STATE_FINISHED		4

#define BE_PLANT "BE_PLANT"
#define BE_SYNTH "BE_SYNTH"
#define BE_PAI   "BE_PAI"

// Antagonist datum flags.
#define ANTAG_OVERRIDE_JOB        0x1 // Assigned job is set to MODE when spawning.
#define ANTAG_OVERRIDE_MOB        0x2 // Mob is recreated from datum mob_type var when spawning.
#define ANTAG_CLEAR_EQUIPMENT     0x4 // All preexisting equipment is purged.
#define ANTAG_CHOOSE_NAME         0x8 // Antagonists are prompted to enter a name.
#define ANTAG_IMPLANT_IMMUNE     0x10 // Cannot be loyalty implanted.
#define ANTAG_SUSPICIOUS         0x20 // Shows up on roundstart report.
#define ANTAG_HAS_LEADER         0x40 // Generates a leader antagonist.
#define ANTAG_HAS_NUKE           0x80 // Will spawn a nuke at supplied location.
#define ANTAG_RANDSPAWN         0x100 // Potentially randomly spawns due to events.
#define ANTAG_VOTABLE           0x200 // Can be voted as an additional antagonist before roundstart.
#define ANTAG_SET_APPEARANCE    0x400 // Causes antagonists to use an appearance modifier on spawn.
#define ANTAG_RANDOM_EXCEPTED   0x800 // If a game mode randomly selects antag types, antag types with this flag should be excluded.

// Mode/antag template macros.
#define MODE_BORER "borer"
#define MODE_XENOMORPH "xeno"
#define MODE_LOYALIST "loyalist"
#define MODE_COMMANDO "commando"
#define MODE_DEATHSQUAD "deathsquad"
#define MODE_ERT "ert"
#define MODE_ACTOR "actor"
#define MODE_MERCENARY "mercenary"
#define MODE_NINJA "ninja"
#define MODE_RAIDER "raider"
#define MODE_WIZARD "wizard"
#define MODE_CHANGELING "changeling"
#define MODE_CULTIST "cultist"
#define MODE_MONKEY "monkey"
#define MODE_RENEGADE "renegade"
#define MODE_REVOLUTIONARY "revolutionary"
#define MODE_MALFUNCTION "malf"
#define MODE_TRAITOR "traitor"
#define MODE_DEITY "deity"
#define MODE_GODCULTIST "god cultist"

#define DEFAULT_TELECRYSTAL_AMOUNT 130
#define IMPLANT_TELECRYSTAL_AMOUNT(x) (round(x * 0.49)) // If this cost is ever greater than half of DEFAULT_TELECRYSTAL_AMOUNT then it is possible to buy more TC than you spend

/////////////////
////WIZARD //////
/////////////////

/*		WIZARD SPELL FLAGS		*/
#define GHOSTCAST		0x1		//can a ghost cast it?
#define NEEDSCLOTHES	0x2		//does it need the wizard garb to cast? Nonwizard spells should not have this
#define NEEDSHUMAN		0x4		//does it require the caster to be human?
#define Z2NOCAST		0x8		//if this is added, the spell can't be cast at centcomm
#define NO_SOMATIC		0x10	//spell will go off if the person is incapacitated or stunned
#define IGNOREPREV		0x20	//if set, each new target does not overlap with the previous one
//The following flags only affect different types of spell, and therefore overlap
//Targeted spells
#define INCLUDEUSER		0x40	//does the spell include the caster in its target selection?
#define SELECTABLE		0x80	//can you select each target for the spell?
#define NOFACTION		0x1000  //Don't do the same as our faction
#define NONONFACTION	0x2000  //Don't do people other than our faction
//AOE spells
#define IGNOREDENSE		0x40	//are dense turfs ignored in selection?
#define IGNORESPACE		0x80	//are space turfs ignored in selection?
//End split flags
#define CONSTRUCT_CHECK	0x100	//used by construct spells - checks for nullrods
#define NO_BUTTON		0x200	//spell won't show up in the HUD with this

//invocation
#define SpI_SHOUT	"shout"
#define SpI_WHISPER	"whisper"
#define SpI_EMOTE	"emote"
#define SpI_NONE	"none"

//upgrading
#define Sp_SPEED	"speed"
#define Sp_POWER	"power"
#define Sp_TOTAL	"total"

//casting costs
#define Sp_RECHARGE	"recharge"
#define Sp_CHARGES	"charges"
#define Sp_HOLDVAR	"holdervar"

#define INITIALIZATION_NOW 1
#define INITIALIZATION_HAS_BEGUN 2
#define INITIALIZATION_COMPLETE 4
#define INITIALIZATION_NOW_AND_COMPLETE (INITIALIZATION_NOW|INITIALIZATION_COMPLETE)
