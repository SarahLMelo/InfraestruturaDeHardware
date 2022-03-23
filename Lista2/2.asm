sw x0, x
lw x10, a
lw x11, b
lw x12, c

blt x10, x0, end

addi x5, x0, 32 


end:

halt

a: .word 0x00
b: .word 0x00
c: .word 0x00
x: .word 0x02
