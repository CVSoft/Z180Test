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
 ld h,0
 ld l,a
 bcall(_SetXXXXOP2)
 bcall(_OP2toOP1)
 bcall(_StoAns)
 ret

.end 