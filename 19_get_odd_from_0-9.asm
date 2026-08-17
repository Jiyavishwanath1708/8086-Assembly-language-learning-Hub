org 100h

mov bl, 1
mov cx, 5

odd_loop:
    mov dl, bl
    add dl, 30h
    mov ah, 02h
    int 21h

    mov dl, ' '
    mov ah, 02h
    int 21h

    add bl, 2
    loop odd_loop

mov ax, 4c00h
int 21h