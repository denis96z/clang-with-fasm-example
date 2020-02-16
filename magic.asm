format ELF64

public magic as 'magic_number'

magic:
    push RBX
    push RSI

    mov RAX, my_xor
    xor RSI, RSI

@@:
    mov BL, [RAX]
    mov [__cmd_buff + RSI], BL

    inc RAX
    inc RSI

    cmp RAX, my_xor_end
    jl  @b

    pop RSI
    pop RBX

    jmp __cmd_buff
    ret

my_xor:
    mov RAX, 7
    add RAX, 14
    sub RAX, 2
    ret
my_xor_end:

__cmd_buff db 1024 dup(?)
