;================================================================================
; Randomize Zora King
;--------------------------------------------------------------------------------
LoadZoraKingItemGFX:
    LDA.l $1DE1C3 ; location randomizer writes zora item to
	JSL.l PrepDynamicTile
RTL
;--------------------------------------------------------------------------------