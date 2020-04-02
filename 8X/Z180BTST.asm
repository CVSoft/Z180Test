.binarymode ti8x

#include "ti83plus.inc"

.org userMem-2
.db t2ByteTok,tasmCmp

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