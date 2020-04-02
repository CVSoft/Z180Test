.binarymode ti8x

#include "ti83plus.inc"

.org userMem-2
.db t2ByteTok,tasmCmp

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