.data

.dword 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 523, 524, 525, 533, 512

.text

lui x3, 0x10000

add x10 , x0 , x0

ld x4 , 0(x3)
add x10 , x10 , x4
ld x4 , 8(x3)
add x10 , x10 , x4
ld x4 , 16(x3)
add x10 , x10 , x4
ld x4 , 24(x3)
add x10 , x10 , x4
ld x4 , 32(x3)
add x10 , x10 , x4
ld x4 , 40(x3)
add x10 , x10 , x4
ld x4 , 48(x3)
add x10 , x10 , x4
ld x4 , 56(x3)
add x10 , x10 , x4
ld x4 , 64(x3)
add x10 , x10 , x4
ld x4 , 72(x3)
add x10 , x10 , x4


ld x4 , 80(x3)
sub x10 , x10 , x4
ld x4 , 88(x3)
sub x10 , x10 , x4
ld x4 , 96(x3)
sub x10 , x10 , x4
ld x4 , 104(x3)
sub x10 , x10 , x4
ld x4 , 112(x3)
sub x10 , x10 , x4





