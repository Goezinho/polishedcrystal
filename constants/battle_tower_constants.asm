BATTLETOWER_PARTY_LENGTH EQU 3
BATTLETOWER_STREAK_LENGTH EQU 7

BATTLETOWER_PARTYDATA_SIZE EQU BATTLETOWER_PARTY_LENGTH * 2 ; set + index
BATTLETOWER_SAVEDPARTIES EQU 3 ; to limit repeats

BATTLETOWER_NUM_TRAINERS EQU 128 ; excludes Tower Tycoon which is seperate
BATTLETOWER_TYCOON EQU BATTLETOWER_NUM_TRAINERS ; the ID after everything else

BATTLETOWER_NUM_SETS EQU 4

; sBattleTowerChallengeState values
	const_def
	const BATTLETOWER_NO_CHALLENGE
	const BATTLETOWER_SAVED_AND_LEFT
	const BATTLETOWER_CHALLENGE_IN_PROGRESS
	const BATTLETOWER_LOST_CHALLENGE
	const BATTLETOWER_WON_CHALLENGE

; Special_BattleTower_Battle return values
	const_def
	const BTCHALLENGE_NEXT
	const BTCHALLENGE_TYCOON
	const BTCHALLENGE_WON
	const BTCHALLENGE_LOST
