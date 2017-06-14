;--------------------------------------------------------------------------------
;Dungeon Music
;org $02D592 ; PC 0x15592
;11 - Pendant Dungeon
;16 - Crystal Dungeon
;
;org $02D592+$08
;Music_Eastern:
;db $11
;
;org $02D592+$09
;Music_Desert:
;db $16, $16, $16, $16
;
;org $02D592+$33
;Music_Hera:
;db $16
;org $02907A ; 0x1107A - Bank02.asm:3089 (#$11)
;Music_Hera2:
;db $16
;org $028B8C ; 0x10B8C - Bank02.asm:2231 (#$11)
;Music_Hera3:
;db $16
;
;org $02D592+$26
;Music_Darkness:
;db $11
;
;org $02D592+$25
;Music_Swamp:
;db $16
;
;org $02D592+$28
;Music_Skull:
;db $11, $11, $11, $11
;
;org $02D592+$76
;Music_Skul_Drop:
;db $11, $11, $11, $11
;
;org $02D592+$34
;Music_Thieves:
;db $11
;
;org $02D592+$2D
;Music_Ice:
;db $16
;
;org $02D592+$27
;Music_Mire:
;db $11
;
;org $02D592+$35
;Music_TRock:
;db $11
;org $02D592+$15
;Music_TRock2:
;db $11
;org $02D592+$18
;Music_TRock3:
;db $11, $11
;
;org $02D592+$37
;Music_GTower:
;db $11
;--------------------------------------------------------------------------------

;org $06FA78 ; set all prize packs to bombs
;dd #$DDDDDDDD
;dd #$DDDDDDDD
;dd #$DDDDDDDD
;dd #$DDDDDDDD
;dd #$DDDDDDDD
;dd #$DDDDDDDD
;dd #$DDDDDDDD
;dd #$DDDDDDDD
;
;;Zarby
;org $09E329
;db #$6D
;org $01E306
;db #$00
;org $01E397
;db #$00
;org $09DDC1
;db #$07, #$17, #$26, #$0A, #$0A, #$26, #$07, #$18, #$26
;org $09E410
;db #$05, #$09, #$8B
;org $01E28A
;db #$00
;org $01E2E8 
;db #$00
;org $1BBBCE
;db #$82, #$82
;
;;--
;
;;Skuj
;org $0A84B9 ; Ganon Basement Remodel
;db #$E1, #$04, #$93, #$13, #$C4, #$B8, #$38, #$C2, #$FC, #$A1, #$00, #$2B, #$22, #$61, #$FC, #$A9, #$04, #$FD, #$21, #$02, #$4B, #$23, #$62, #$FC, #$69, #$00, #$1A, #$A1, #$61, #$FC, #$6E, #$81, #$48, #$9A, #$62, #$FD, #$2A, #$86, #$58, #$AA, #$01, #$FD, #$AA, #$82, #$FE, #$2A, #$80, #$98, #$AA, #$01, #$FE, #$AA, #$84, #$A9, #$81, #$61, #$FE, #$A7, #$05, #$90, #$73, #$02, #$FE, #$07, #$01, #$83, #$10, #$61, #$FE, #$00, #$00, #$93, #$00, #$01, #$FF, #$C0, #$02, #$F3, #$10, #$62, #$FF, #$C7, #$03, #$D8, #$73, #$02, #$FF, #$27, #$07, #$CA, #$82, #$62, #$FF, #$2D, #$03, #$99, #$D2, #$02, #$FE, #$2D, #$01, #$D1, #$13, #$C4, #$90, #$51, #$C4, #$E0, #$51, #$C4, #$FE, #$92, #$48, #$B4, #$26, #$03, #$FF, #$32, #$4A, #$A4, #$36, #$63, #$FE, #$94, #$C9, #$B4, #$4E, #$04, #$FF, #$34, #$CB, #$CC, #$36, #$64, #$FE, #$C3, #$18, #$B8, #$31, #$07, #$FF, #$23, #$1A, #$B0, #$39, #$67, #$FE, #$C4, #$99, #$B8, #$49, #$08, #$FF, #$24, #$9B, #$C8, #$39, #$68, #$A3, #$20, #$22, #$A3, #$20, #$69, #$A3, #$5C, #$22, #$DF, #$20, #$69, #$B8, #$70, #$A4, #$08, #$00, #$60, #$10, #$00, #$60, #$18, #$13, #$C0, #$18, #$53, #$C0, #$59, #$13, #$C0, #$59, #$53, #$C0, #$59, #$89, #$C0, #$89, #$81, #$C0, #$89, #$A0, #$00, #$8B, #$E1, #$C0, #$CA, #$E1, #$C0, #$D9, #$83, #$C0, #$D9, #$C1, #$C0, #$FF, #$FF, #$2B, #$14, #$FF, #$FF, #$FF, #$F0, #$FF, #$61, #$0A, #$82, #$18
;
;org $04F4F3 ; Ganon Basement to Hera
;db #$07
;
;org $02D26A ; Pyramid Hole is Hera Entrance
;db #$14
;
;org $02E849 ; Fly 1 to Sanctuary
;db #$13, #$00, #$16, #$00, #$18, #$00, #$2C, #$00, #$2F, #$00, #$30, #$00, #$3B, #$00, #$3F, #$00, #$5B, #$00, #$35, #$00, #$0F, #$00, #$15, #$00, #$33, #$00, #$12, #$00, #$3F, #$00, #$55, #$00, #$7F, #$00, #$1A, #$00, #$88, #$08, #$30, #$0B, #$88, #$05, #$98, #$07, #$80, #$18, #$9E, #$06, #$10, #$08, #$2E, #$00, #$42, #$12, #$80, #$06, #$12, #$01, #$9E, #$05, #$8E, #$04, #$80, #$02, #$12, #$01, #$80, #$02, #$00, #$04, #$16, #$05, #$59, #$07, #$B9, #$0A, #$FA, #$0A, #$1E, #$0F, #$DF, #$0E, #$05, #$0F, #$00, #$06, #$46, #$0E, #$C6, #$02, #$2A, #$04, #$BA, #$0C, #$9A, #$04, #$56, #$0E, #$2A, #$04, #$56, #$0E, #$D6, #$06, #$4E, #$0C, #$7E, #$01, #$40, #$08, #$B2, #$0E, #$00, #$00, #$F2, #$06, #$75, #$0E, #$78, #$07, #$0A, #$0C, #$06, #$0E, #$8A, #$0A, #$EA, #$06, #$62, #$04, #$00, #$0E, #$8A, #$0A, #$00, #$0E, #$68, #$04, #$78, #$05, #$B7, #$07, #$17, #$0B, #$58, #$0B, #$A8, #$0F, #$3D, #$0F, #$67, #$0F, #$5C, #$06, #$A8, #$0E, #$28, #$03, #$88, #$04, #$18, #$0D, #$F8, #$04, #$B8, #$0E, #$88, #$04, #$B8, #$0E, #$56, #$07, #$C8, #$0C, #$00, #$02, #$B8, #$08, #$30, #$0F, #$78, #$00, #$78, #$07, #$F3, #$0E, #$F0, #$07, #$90, #$0C, #$80, #$0E, #$10, #$0B, #$70, #$07, #$E8, #$04, #$68, #$0E, #$10, #$0B, #$68, #$0E, #$70, #$04, #$83, #$05, #$C6, #$07, #$26, #$0B, #$67, #$0B, #$8D, #$0F, #$4C, #$0F, #$72, #$0F, #$6D, #$06, #$B3, #$0E, #$33, #$03, #$97, #$04, #$27, #$0D, #$07, #$05, #$C3, #$0E, #$97, #$04, #$C3, #$0E, #$56, #$07, #$D3, #$0C, #$0B, #$02, #$BF, #$08, #$37, #$0F, #$8D, #$00, #$7F, #$07, #$FA, #$0E, #$F7, #$07, #$97, #$0C, #$8B, #$0E, #$17, #$0B, #$77, #$07, #$EF, #$04, #$85, #$0E, #$17, #$0B, #$85, #$0E, #$F6, #$FF, #$FA, #$FF, #$07, #$00, #$F7, #$FF, #$F6, #$FF, #$00, #$00, #$F1, #$FF, #$FB, #$FF, #$00, #$00, #$FA, #$FF, #$0A, #$00, #$F6, #$FF, #$F6, #$FF, #$F6, #$FF, #$FA, #$FF, #$F6, #$FF, #$FA, #$FF, #$F2, #$FF, #$F2, #$FF, #$02, #$00, #$00, #$00, #$0E, #$00, #$00, #$00, #$FE, #$FF, #$0B, #$00, #$F8, #$FF, #$06, #$00, #$FA, #$FF, #$FA, #$FF, #$06, #$00, #$0E, #$00, #$00, #$00, #$FA, #$FF, #$00, #$00
;
;;---
;
;org $02A451 ; Disable OW Map
;LDA.b #$00
;
;org $0287FB ; Disable UW Map
;LDA.b #$00
;
;org $06C913 ; 34913 sprite_ponds.asm:933 (LDA.b #$3B : STA $0DC0, X ; silver arrows)
;LDA.b #$43
;
;org $1D9532 ; E9532
;JSL CanGanonTakeDamage : NOP
;
;org $2F8000
;CanGanonTakeDamage:
;	LDA $7EF359 : CMP.b #$02 : BEQ .normal
;	.invincible
;    LDA.b #$01 : STA $0D80, X
;    LDA.b #$80 : STA $0DF0, X
;RTL
;	.normal
;	LDA.b #$11 : STA $0D80, X
;	LDA.b #$68 : STA $0DF0, X
;RTL
;
;