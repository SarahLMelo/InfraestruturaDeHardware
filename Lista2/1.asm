lw x10, a
sw x10, m
lw x11, b
lw x12, a

beq x11, x10, end1

sub x10, x12, x11
beq x0, x0, end

end1:
	sub x10, x11, x12

end:
 sw x10, m

halt

a: .word 0x5
b: .word 0x9
m: .word 0x00

