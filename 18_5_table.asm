org 100h

mov cx, 10
mov bl, 1

table:
    mov al, 5
    mul bl              ; AX = 5 × BL

    mov dl, 10
    div dl              ; AL = tens, AH = units

    mov bh, ah          ; save units digit

    ; Print tens digit
    cmp al, 0
    je print_unit

    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

print_unit:
    mov al, bh
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

    ; New line
    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 10
    int 21h

    inc bl
    loop table

mov ax, 4c00h
int 21h