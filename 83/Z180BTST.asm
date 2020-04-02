.binarymode ti83
.unsquish
.tivariabletype $05

#include "ti83.inc"

.org userMem

 ld a,0
 dec a
 daa
 ld h,0
 ld l,a
 call _SetXXXXOP2
 call _OP2toOP1
 call _StoAns
 ret

.squish
.db $3F,$D4,$3F,$30,$30,$30,$30,$3F,$D4
.end 