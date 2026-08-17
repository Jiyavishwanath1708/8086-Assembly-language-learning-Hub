org 100h

mov al, 7
mov bl, 2

div bl

cmp ah, 0
je even

; Odd
mov dx, offset odd_msg
mov ah, 09h
int 21h
jmp exit

even:
mov dx, offset even_msg
mov ah, 09h
int 21h

exit:
mov ah, 4ch
int 21h

even_msg db 'Even$'
odd_msg db 'Odd$'