.binarymode ti86

#include "ti86.inc"

.org _asm_exec_ram-2
.db $8e,$28

 ld a,0
 dec a
 daa
 cp $99
 jr z,ShowZ80
 ld hl,Z180Text
 jr Show
ShowZ80:
 ld hl,Z80Text
Show:
 call _puts
 ret

Z80Text:
 .db "Z80",0
Z180Text:
 .db "Z180",0

.end 