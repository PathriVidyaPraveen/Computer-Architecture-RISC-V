.data
.dword 3, 12, 3, 125, 50, 32, 16  # sample input

.text

lui x3 , 0x10000 # x3 = 0x10000000
ld x4 , 0(x3) # load count of gcd pairs into x4

addi x5 , x3 , 8 # x5 points to first input number
lui x6, 0x10000
addi x6, x6, 0x200 # x6 = 0x10000200

li x9 , 0 # GCD loop counter

gcd_loop:

    beq x9 , x4 , end # if counter == count then done
    ld x7 , 0(x5) # a = *x5
    ld x8 , 8(x5) # b = *(x5 + 8)

    # check if a == 0 or b == 0
    beq x7 , x0 , store_zero
    beq x8 , x0 , store_zero

gcd_compute:

    beq x7 , x8 , store_result
    bgtu x7 , x8 , a_gt_b

    sub x8 , x8 , x7 # b = b-a
    jal x0 , gcd_compute

a_gt_b:

    sub x7 , x7 , x8 # a = a - b
    jal x0 , gcd_compute


store_result:

    sd x7 , 0(x6) # store gcd vaue x7 to output
    addi x5 , x5 , 16 # move to next input pair after 2 doublewords
    addi x6 , x6 , 8 # move to next output pair after 1 double word
    addi x9 , x9 , 1 # increment the number of computations completed or counter 
    jal x0 , gcd_loop

store_zero:

    sd x0 , 0(x6) # store 0 if a or b is zero
    addi x5 , x5 , 16
    addi x6 , x6 , 8
    addi x9 , x9 , 1
    jal x0 , gcd_loop


end:

    nop # done


# end of program






