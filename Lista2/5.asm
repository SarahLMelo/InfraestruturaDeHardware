loop:
 lb x10, 1025(x0) #Le do teclado
 lw x12, enter #Acabou a palavra (o usuário apertou enter)
 beq x10, x12, end

 lw x12, a #Letra a
 beq x10, x12, pontua

 lw x12, e #Letra e
 beq x10, x12, pontua

 lw x12, i #Letra i
 beq x10, x12, pontua

 lw x12, o #Letra o
 beq x10, x12, pontua

 lw x12, u #Letra u
 beq x10, x12, pontua

 beq x0, x0, loop

pontua:
 addi x11, x11, 0x1 #Pontuando
 beq x0, x0, loop
 
 end:
 addi x11, x11, 0x30 #Finalizando
 sb x11, 1024(x0)
 halt

a: .word 0x61
e: .word 0x65
i: .word 0x69 
o: .word 0x6F
u: .word 0x75
enter: .word 0xD



