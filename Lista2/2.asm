sw x0, x
lw x10, a
lw x11, b
lw x12, c

blt x10, x0, end #Se a < 0
addi x13, x0, 32
blt x13, x11, end #Se 32 < b
addi x13, x0, 25
bge x13, x12, end #Se 25 >= c

addi x14, x0, 1
sw x14, x

end:

halt

a: .word 0x00
b: .word 0x00
c: .word 0x00
x: .word 0x02

