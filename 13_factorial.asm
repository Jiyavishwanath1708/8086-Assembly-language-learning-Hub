org 100h
mov ax,1
mov cx,5
print_loop:
mul cx
loop print_loop
mov ah,4ch
int 21h


ret