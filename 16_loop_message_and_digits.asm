org 100h
.data
msg db 'DONE',13,10,'$'
digit db '0'

.code
mov ax,@data
mov ds,ax
mov cx,2
doneloop:
mov dx, offset msg
mov ah,09h
int 21h
loop doneloop
mov cx,5
mov bl,digit
digit_loop:
mov dl,bl
mov ah,02h
int 21h
inc bl
loop digit_loop
ret