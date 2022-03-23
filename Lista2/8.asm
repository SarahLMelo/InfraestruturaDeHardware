loop:
    jal x14, zera

    add x11, x0, x0
    lb x10, 0(x0)
    sb x10, 1030(x0)
	lh x10, 1031(x0)

    sb x12, 1033(x0)
	jal x14, verde1

amarelo1:
    addi x13, x0, 0
    sb x11, 1034(x13)
	addi x11, x11, 1
    jal x14, end

amarelo2:
    addi x13, x0, 1
    sb x11, 1034(x13)
	addi x11, x11, 1
    jal x14, end

verde1:
    addi x13, x0, 2
    sb x11, 1034(x13)
	addi x11, x11, 1
    jal x14, end

verde2:
    addi x13, x0, 3
    sb x11, 1034(x13)
	addi x11, x11, 1
    jal x14, end

vermelho1:
    addi x13, x0, 4
    sb x11, 1034(x13)
	addi x11, x11, 1
    jal x14, end

vermelho2:
    addi x13, x0, 5
    sb x11, 1034(x13)
	addi x11, x11, 1

zera:
    addi x11, x11, 6
    sb x10, 1033(x0)
    sb x11, 1034(x13)
    jal x14, end

end:

	jal x11, loop

