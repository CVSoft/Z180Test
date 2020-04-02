.binarymode ti86

#include "ti86.inc"

.org _asm_exec_ram-2
.db $8e,$28

 ld a,0
 dec a
 daa
 ld h,0
 ld l,a
 call _SetXXXXOP2
 call _OP2toOP1
 call _StoAns
 ret

.end 