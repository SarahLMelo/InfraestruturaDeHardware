addi x10, x0, 7FC038
addi x11, x0, 3FFFFFC00

andi x12, 0x7F8
slli x12, x10, 0x10 #ShiftLeft 16 casas
andi x11, f807ffff

or x11, x12, x11
