.binarymode ti73

#include "mallard.inc"

.org userMem
.db $d9,$00,"Duck"
.dw Start
.db "Z180 Test",0

Start:
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
 bcall(_puts)
 ret

Z80Text:
 .db "Z80",0
Z180Text:
 .db "Z180",0

.end 