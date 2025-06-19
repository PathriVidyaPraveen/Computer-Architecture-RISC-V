swap:

slli x6 , x11 , 3
add x6 , x10 , x6
ld x5 , 0(x6)
ld x7 , 8(x6)
sd x7 , 0(x6)
sd x5 , 8(x6)
jalr x0 , 0(x1)
