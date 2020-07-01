global _start

section .data
    msg: db "1"
    msg_len: equ $ - msg

_start:
    mov esi, 0

    @L1:
        inc esi

        mov eax, 4
        mov ebx, 1
        
        mov ecx, msg
        mov edx, msg_len
        int 0x80
    cmp esi, 10
    jne @L1

    call quit

quit:
    mov eax, 1
    mov ebx, 0
    int 0x80

