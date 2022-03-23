init:
	lb x10, 0(x0)
	sb x10, 1030(x0)

loop:
	add x13, x0, x0
  	sb x12, 1033(x0)
    	sb x13, 1034(x0)

	lh x10, 1031(x0)

	addi x13, x0, 0xfffff
   	addi x11, x0, 10
	blt x10, x11, vermelho1

	addi x11, x0, 15
	blt x10, x11, amarelo1

	addi x11, x0, 20
	blt x10, x11, amarelo2

	addi x11, x0, 25
	blt x10, x11, verde1

	addi x11, x0, 30
	blt x10, x11, verde2

	jal x14, vermelho2


amarelo1:
	addi x12, x0, 6
	sb x12, 1033(x0)
    	sb x13, 1034(x0)
    	jal x14, end

amarelo2:
	addi x12, x0, 9
	sb x12, 1033(x0)
    	sb x13, 1034(x0)
    	jal x14, end
verde1:
    	addi x12, x0, 10
	sb x12, 1033(x0)
	sb x13, 1034(x0)
    	jal x14, end

verde2:
	addi x12, x0, 11
	sb x12, 1033(x0)
    	sb x13, 1034(x0)
    	jal x14, end

vermelho1:
    	addi x12, x0, 3
	sb x12, 1033(x0)
    	sb x13, 1034(x0)
    	jal x14, end

vermelho2:
    	addi x12, x0, 5
	sb x12, 1033(x0)
    	sb x13, 1034(x0)
    	jal x14, end
end:

	jal x14, loop
