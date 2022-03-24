loop:
    lb x10, 1025(x0)
    lw x12, enter
    beq x10, x12, end
	addi x12, x0, 0x30
	beq x10, x12, fat0
	addi x12, x0, 0x31
	beq x10, x12, fat1
	addi x12, x0, 0x32
	beq x10, x12, fat2
	addi x12, x0, 0x33
	beq x10, x12, fat3
	addi x12, x0, 0x34
	beq x10, x12, fat4
	addi x12, x0, 0x35
	beq x10, x12, fat5
	addi x12, x0, 0x36
	beq x10, x12, fat6
	addi x12, x0, 0x37
	beq x10, x12, fat7
	addi x12, x0, 0x38
	beq x10, x12, fat8
	addi x12, x0, 0x39
	beq x10, x12, fat9
	jal x13, loop

fat0:
	addi x11, x11, 0x1
	jal x13, loop
fat1:
	addi x11, x11, 0x1
	jal x13, loop
fat2:
	addi x11, x11, 0x2
	jal x13, loop
fat3:
	addi x11, x11, 0x6
	jal x13, loop
	
fat4:
	addi x11, x11, 0x18
	jal x13, loop

fat5:
	addi x11, x11, 0x78
	jal x13, loop

fat6:
	addi x11, x11, 0x2D0
	jal x13, loop

fat7:
	addi x11, x11, 0x13B0
	jal x13, loop

fat8:
	addi x11, x11, 0x9D80
	jal x13, loop

fat9:
	addi x11, x11, 0x362880
	jal x13, loop

end:
halt
enter: .word 0xD
