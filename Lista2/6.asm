#x13 -> Pontuação do player 1
#x14 -> Pontuação do player 2
#x15 -> Pontuação atual
#x12 -> meu temp
#x10 -> minha leitura
#x11 -> player jogando agora

loop:
    lb x10, 1025(x0)
    lw x12, enter
    beq x10, x12, terminouPalavra

    lw x12, a
    beq x10, x12, pontua1

    lw x12, e
    beq x10, x12, pontua1

    lw x12, i
    beq x10, x12, pontua1

    lw x12, o
    beq x10, x12, pontua1

    lw x12, u
    beq x10, x12, pontua1

    lw x12, d
    beq x10, x12, pontua2

    lw x12, g
    beq x10, x12, pontua2

    lw x12, t
    beq x10, x12, pontua2

    lw x12, b
    beq x10, x12, pontua3

    lw x12, c
    beq x10, x12, pontua3

    lw x12, m
    beq x10, x12, pontua3

    lw x12, n
    beq x10, x12, pontua3

    lw x12, p
    beq x10, x12, pontua3

    lw x12, f
    beq x10, x12, pontua4

    lw x12, h
    beq x10, x12, pontua4

    lw x12, v
    beq x10, x12, pontua4

    lw x12, w
    beq x10, x12, pontua4

    lw x12, y
    beq x10, x12, pontua4

    lw x12, k
    beq x10, x12, pontua5

    lw x12, r
    beq x10, x12, pontua5

    lw x12, s
    beq x10, x12, pontua5

    lw x12, j
    beq x10, x12, pontua8

    lw x12, l
    beq x10, x12, pontua8

    lw x12, x
    beq x10, x12, pontua8

    lw x12, q
    beq x10, x12, pontua10

    lw x12, z
    beq x10, x12, pontua10

    beq x0, x0, loop


pontua1:
    addi x15, x15, 0x1
    beq x0, x0, loop

pontua2:
    addi x15, x15, 0x2
    beq x0, x0, loop

pontua3:
    addi x15, x15, 0x3
    beq x0, x0, loop

pontua4:
    addi x15, x15, 0x4
    beq x0, x0, loop

pontua5:
    addi x15, x15, 0x5
    beq x0, x0, loop

pontua8:
    addi x15, x15, 0x8
    beq x0, x0, loop

pontua10:
    addi x15, x15, 0xA
    beq x0, x0, loop

changePlayer:
    add x13, x15, x0
	add x15, x0, x0
    addi x11, x11, 0x1
    beq x0, x0, loop

terminouPalavra:
    beq x11, x0, changePlayer
    add x14, x15, x0

    beq x14, x13, empate
    blt x14, x13, ganhou1
    jal x0, ganhou2

empate:
    addi x13, x0, 0x30
    sb x13, 1024(x0) 
    halt

ganhou1:
    addi x13, x0, 0x31
    sb x13, 1024(x0) 
    halt

ganhou2:
    addi x13, x0, 0x32
    sb x13, 1024(x0) 
    halt
    

a: .word 0x41
b: .word 0x42
c: .word 0x43
d: .word 0x44
e: .word 0x45
f: .word 0x46
g: .word 0x47
h: .word 0x48
i: .word 0x49
j: .word 0x4A
k: .word 0x4B
l: .word 0x4C
m: .word 0x4D
n: .word 0x4E
o: .word 0x4F
p: .word 0x50
q: .word 0x51
r: .word 0x52
s: .word 0x53
t: .word 0x54
u: .word 0x55
v: .word 0x56
w: .word 0x57
x: .word 0x58
y: .word 0x59
z: .word 0x5A
enter: .word 0xD
