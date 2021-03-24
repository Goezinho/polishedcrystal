CherrygrovePokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, CHERRYGROVE_CITY, 2
	warp_event  6,  7, CHERRYGROVE_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalRedScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  1,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokeCenter1FTeacherScript, -1
	object_event  8,  1, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CherrygrovePokeCenter1FFisherText, -1
	object_event 11,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CherrygrovePokeCenter1FGentlemanText, -1
	object_event  9,  4, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, jumptextfaceplayer, LadyWonderTradeReceptionistScript, -1

PokemonJournalRedScript:
	setflag ENGINE_READ_RED_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "<PK><MN> Trainer Red!"

	para "Red is said to"
	line "have defeated his"

	para "rival Blue for the"
	line "title of #mon"

	para "League Champion in"
	line "record time."
	done

CherrygrovePokeCenter1FTeacherScript:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

	text "The Communication"
	line "Center upstairs"
	cont "was just built."

	para "But they're still"
	line "finishing it up."
	done

.Text2:
	text "The Communication"
	line "Center upstairs"
	cont "was just built."

	para "I traded #mon"
	line "there already!"
	done

CherrygrovePokeCenter1FFisherText:
	text "It's great. I can"
	line "store any number"

	para "of #mon, and"
	line "it's all free."
	done

CherrygrovePokeCenter1FGentlemanText:
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done

LadyWonderTradeReceptionistScript:
	opentext
	writetext LadyWonderTradeIntroText
	waitbutton
	checkevent EVENT_INTRODUCED_TEALA
	iftrue .introduced
	writetext LadyIntroduceTealaText
	waitbutton
	setevent EVENT_INTRODUCED_TEALA
.introduced
	writetext LadyWonderTradeExplanationText
	promptbutton
	special WonderTrade
	iffalse .done
	playmusic MUSIC_POKECOM_CENTER
	writetext LadyWonderTradeCompleteText
	playsound SFX_DEX_FANFARE_80_109
	waitsfx
	ifnotequal 2, .done
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	playmusic MUSIC_SPIKY_EARED_PICHU_HGSS
	writetext LadyWonderTradeForGSBallPichuText
	promptbutton
	verbosegivekeyitem GS_BALL
	writetext LadyWonderTradeForGSBallPichuText2
	waitbutton
.done
	jumpopenedtext LadyWonderTradeGoodbyeText

LadyWonderTradeIntroText:
	text "Hello! Welcome to"
	line "#Com Center"
	cont "Wonder Trade Hub."
	done

LadyIntroduceTealaText:
	text "I'm Teala, your"
	line "trade attendant."
	done

LadyWonderTradeExplanationText:
	text "You can trade"
	line "#mon with other"
	cont "people far away."
	done

LadyWonderTradeCompleteText:
	text "It's your new"
	line "partner."

	para "Please take care"
	line "of it with love."
	done

LadyWonderTradeGoodbyeText:
	text "We hope to see you"
	line "again."
	done

LadyWonderTradeForGSBallPichuText:
	text "…But what's this?"
	line "Is something wrong"

	para "with the Wonder"
	line "Trade machine?"

	para "It seems like you"
	line "just traded a"

	para "#mon with"
	line "yourself."

	para "But that can't be"
	line "right… You can't"

	para "be in two places"
	line "at once."

	para "Besides, the ma-"
	line "chine communicates"

	para "through space,"
	line "not time…"

	para "And what is that"
	line "strange Ball it's"

	para "holding? Is it an"
	line "Apricorn Ball?"

	para "Here, take a look…"
	done

LadyWonderTradeForGSBallPichuText2:
	text "It may be unusual,"
	line "but a #mon"
	cont "is a #mon."

	para "Please look after"
	line "it carefully."
	done

