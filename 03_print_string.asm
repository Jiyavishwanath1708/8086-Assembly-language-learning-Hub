org 100h

;print string

mov dx,offset msg
mov ah,09h
int 21h
mov ah,4ch
int 21h
msg db 'Jiya vishwanath$'

ret




