;================================================================================
; Master / Tempered / Golden Sword Swap
;================================================================================
;$03348E: smith sword check (to see if uprade-able)
;================================================================================
GetFairySword:
	CMP.b #$49 : BNE + : LDA.b #$00 : + ; convert single fighter sword to low id one
	CMP.b #$50 : BNE + : LDA.b #$01 : + ; convert safe master sword to normal one
    CMP #$04 : !BLT + : JMP.l PyramidFairy_BRANCH_IOTA : + ; for any sword, incl newer
    JSL ItemCheck_FairySword : BEQ + : JMP.l PyramidFairy_BRANCH_IOTA : + ; skip if we already flagged getting this
	JSL ItemSet_FairySword ; mark as got
    LDA FairySword : STA $0DC0, X ; whichever sword
    LDA.b #$05 : STA $0EB0, X ; something we overwrote, documentation unclear on purpose
    
JMP.l PyramidFairy_BRANCH_GAMMA
;================================================================================
;GetSmithSword:
;	JSL ItemCheck_SmithSword : BEQ + : JMP.l Smithy_AlreadyGotSword : + ; check if we're not already done
;	;JSL ItemSet_SmithSword - too early
;JMP.l Smithy_DoesntHaveSword
;================================================================================
;LoadSwordForDamage:
;	LDA $7EF359 : CMP #$04 : BNE .done ; skip if not gold sword
;	LDA $1B : BEQ + ; skip if outdoors
;	LDA $A0 : CMP #41 : BNE + ; decimal 41 ; skip if not in the mothula room
;		LDA #$03 ; pretend we're using tempered
;		BRA .done
;	+
;	LDA #$04 ; nvm gold sword is fine
;	.done
;RTL
;================================================================================
LoadSwordForDamage:
	LDA $0E20, X : CMP.b #$88 : BNE .notMoth
		JSR.w LoadModifiedSwordLevel ; load normal sword value
		CMP.b #$04 : !BLT + : DEC : +
		RTL
	.notMoth
	JSR.w LoadModifiedSwordLevel ; load normal sword value
RTL
;================================================================================
; $7F50C0 - Sword Modifier
LoadModifiedSwordLevel: ; returns short
	LDA $7F50C0 : BEQ +
		!ADD $7EF359 ; add normal sword value to modifier
			BNE ++ : LDA.b #$01 : RTS : ++
			CMP.b #$05 : !BLT ++ : LDA.b #$04 : RTS : ++
		RTS
	+
	LDA $7EF359 ; load normal sword value
RTS
;================================================================================
; $7EF35B - Armor Inventory
; $7F50C2 - Armor Modifier
; $7F5020 - Scratch Space (Caller Preserved)
LoadModifiedArmorLevel:
	PHA
		LDA $7EF35B : !ADD $7F50C2
		CMP.b #$FF : BNE + : LDA.b #$00 : +
		CMP.b #$03 : !BLT + : LDA.b #$02 : +
		STA $7F5020
	PLA
	!ADD $7F5020
RTL
;================================================================================
; $7EF37B - Magic Inventory
; $7F50C3 - Magic Modifier
LoadModifiedMagicLevel:
	LDA $7F50C3 : BEQ +
		!ADD $7EF37B ; add normal magic value to modifier
			CMP.b #$FF : BNE ++ : LDA.b #$00 : RTL : ++
			CMP.b #$03 : !BLT ++ : LDA.b #$02 : ++
		RTL
	+
	LDA $7EF37B ; load normal magic value
RTL
;================================================================================
; $7E0348 - Ice Value
; $7F50C7 - Ice Modifier
LoadModifiedIceFloorValue_a11:
	LDA $5D : CMP #$01 : BEQ + : CMP #$17 : BEQ + : CMP #$1C : BEQ +
	LDA $5B : BNE +
		LDA.w $0348 : ORA $7F50C7 : AND.b #$11 : RTL
	+ : LDA.w $0348 : AND.b #$11
RTL
LoadModifiedIceFloorValue_a01:
	LDA $5D : CMP #$01 : BEQ + : CMP #$17 : BEQ + : CMP #$1C : BEQ +
	LDA $5B : BNE +
		LDA.w $0348 : ORA $7F50C7 : AND.b #$01 : RTL
	+ : LDA.w $0348 : AND.b #$01
RTL
;================================================================================
CheckTabletSword:
	LDA.l AllowHammerTablets : BEQ +
	LDA $7EF34B : BEQ + ; check for hammer
		LDA.b #$02 : RTL
	+
	LDA $7EF359 ; get actual sword value
RTL
;================================================================================
CheckGanonHammerDamage:
	LDA.l HammerableGanon : BEQ +
	LDA $0E20, X : CMP.b #$D8 ; original behavior except ganon
RTL
	+
	LDA $0E20, X : CMP.b #$D6 ; original behavior
RTL
;================================================================================
GetSmithSword:
	JSL ItemCheck_SmithSword : BEQ + : JMP.l Smithy_AlreadyGotSword : +
	LDA.l SmithItemMode : BNE +
		JMP.l Smithy_DoesntHaveSword ; Classic Smithy
	+
    LDA.l SmithItem : TAY
    STZ $02E9 ; Item from NPC
	PHX : JSL Link_ReceiveItem : PLX
	REP #$20 : LDA $7EF360 : !SUB.w #$000A : STA $7EF360 : SEP #$20 ; Take 10 rupees
	JSL ItemSet_SmithSword
	JMP.l Smithy_AlreadyGotSword
;================================================================================
CheckMedallionSword:
	;LDA $FFFFFF
	PHB : PHX : PHY
		LDA.l AllowSwordlessEntranceMedallion : BEQ +
			LDA $8A : CMP.b #$70 : BNE ++
				LDA.l MireRequiredMedallion : TAX : LDA.l .medallion_type, X : CMP $0303 : BNE +
				LDA $7EF2F0 : AND.b #$20 : BNE +
				LDA.b #$08 : PHA : PLB ; set data bank to $08
				LDY.b #$02 : JSL.l Ancilla_CheckIfEntranceTriggered : BCS .permit ; misery mire
				BRA +
			++ : CMP.b #$47 : BNE ++
				LDA.l TRockRequiredMedallion : TAX : LDA.l .medallion_type, X : CMP $0303 : BNE +
				LDA $7EF2C7 : AND.b #$20 : BNE +
				LDA.b #$08 : PHA : PLB ; set data bank to $08
				LDY.b #$03 : JSL.l Ancilla_CheckIfEntranceTriggered : BCS .permit ; turtle rock
			++
		+
	PLY : PLX : PLB
	LDA $7EF359
RTL
	.permit
	PLY : PLX : PLB
	LDA.b #$02 ; Pretend we have master sword
RTL
.medallion_type
db #$0F, #$10, #$11
;================================================================================