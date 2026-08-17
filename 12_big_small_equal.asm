org 100h

mov al, 10
mov bl, 10

cmp al, bl
je equal
jg big

; Small
mov dx, offset small_msg
mov ah, 09h
int 21h
jmp exit

big:
mov dx, offset big_msg
mov ah, 09h
int 21h
jmp exit

equal:
mov dx, offset equal_msg
mov ah, 09h
int 21h

exit:
mov ah, 4ch
int 21h

big_msg db 'Big$'
small_msg db 'Small$'
equal_msg db 'Equal$'