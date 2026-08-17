org 100h

mov dx, offset msg1
mov ah, 09h
int 21h

mov dx, offset msg2
mov ah, 09h
int 21h

mov ah, 4ch
int 21h

msg1 db 'Hello World',13,10,'$'
msg2 db 'Welcome to Assembly$'