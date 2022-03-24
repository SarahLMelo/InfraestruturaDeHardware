lw x10, a
sw x10, m
lw x11, b
lw x12, a

beq x11, x10, end1 #Se b==m

sub x10, x12, x11 # m = a-b
beq x0, x0, end #Equivalente ao jal

end1:
	sub x10, x11, x12 #m = b -1

end:
 sw x10, m #Salva o valor no m

halt

a: .word 0x5
b: .word 0x9
m: .word 0x00

