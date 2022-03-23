loop:
    jal x14, zera

    add x11, x0, x0
    lb x10, 0(x0)
    sb x10, 1030(x0)
	lh x10, 1031(x0)

    sb x12, 1033(x0)
	jal x14, verde1

amarelo1:
    addi x13, x0, 3
    sb x13, 1034(x0)
	addi x11, x11, 1
    jal x14, end

amarelo2:
    addi x13, x0, 5
    sb x13, 1034(x0)
	addi x11, x11, 1
    jal x14, end

verde1:
    addi x13, x0, 6
    sb x13, 1034(x0)
	addi x11, x11, 1
    jal x14, end

verde2:
    addi x13, x0, 9
    sb x13, 1034(x0)
	addi x11, x11, 1
    jal x14, end

vermelho1:
    addi x13, x0, 10
    sb x13, 1034(x0)
	addi x11, x11, 1
    jal x14, end

vermelho2:
    addi x13, x0, 11
    sb x13, 1034(x0)
	addi x11, x11, 1

zera:
    sb x10, 1033(x0)
    sb x13, 1034(x0)
    jal x14, end

end:

	jal x11, loop

