.binarymode ti83
.unsquish
.tivariabletype $05

#include "ti83.inc"

.org $9327

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

.squish
.db $3F,$D4,$3F,$30,$30,$30,$30,$3F,$D4
.end 