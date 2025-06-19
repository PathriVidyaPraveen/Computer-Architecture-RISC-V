# Inputs: x5 (multiplicand), x6 (multiplier)
# Output: x10 = x5 * x6

add x10, x0, x0       # result = 0
add x7, x6, x0        # x7 = copy of multiplier
add x8, x5, x0        # x8 = current multiplicand
add x9, x0, x0        # x9 = loop counter (0..31)

loop:
    andi x11, x7, 1   # check lowest bit of multiplier
    beq x11, x0, skip_add

    add x10, x10, x8  # if bit is 1, add shifted multiplicand

skip_add:
    slli x8, x8, 1    # multiplicand <<= 1
    srli x7, x7, 1    # multiplier >>= 1
    addi x9, x9, 1    # increment counter
    li x12, 32        # loop for 32 bits
    bne x9, x12, loop

# Final result in x10
