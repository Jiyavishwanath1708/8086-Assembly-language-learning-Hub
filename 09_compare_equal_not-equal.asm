org 100h

mov al, 45
mov bl, 7

cmp al, bl
je equal

; Not Equal
mov dx, offset not_equal
mov ah, 09h
int 21h
jmp exit

equal:
    mov dx,offset equal_msg
    mov ah, 09h
    int 21h

exit:
    mov ax, 4c00h
    int 21h

equal_msg db 'Equal$'
not_equal db 'Not Equal$'