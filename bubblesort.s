swap:

slli x6 , x11 , 3
add x6 , x10 , x6
ld x5 , 0(x6)
ld x7 , 8(x6)
sd x7 , 0(x6)
sd x5 , 8(x6)
jalr x0 , 0(x1)

sort:  

addi sp , sp , -40
sd x1 , 32(sp)
sd x22 , 24(sp)
sd x21 , 16(sp)
sd x20 , 8(sp)
sd x19 , 0(sp)

mv x21 , x10
mv x22 , x11

li x19 , 0
for1tst:

bge x19 , x22 , exit1
addi x20 , x19 , -1


for2tst:

blt x20 , x0 , exit2
slli x5 , x20 , 3
add x5 , x21 , x5
ld x6 , 0(x5)
ld x7 , 8(x5)
ble x6 , x7 , exit2

mv x10 , x21
mv x11 , x20
jal x1 , swap
addi x20 , x20 , -1
j for2tst

exit2:

addi x19 , x19 , 1
j for1tst

exit1:

ld x19 , 0(sp)
ld x20 , 8(sp)
ld x21 , 16(sp)
ld x22 , 24(sp)
addi , sp , sp , 40
jalr x0 , 0(x1)


         
