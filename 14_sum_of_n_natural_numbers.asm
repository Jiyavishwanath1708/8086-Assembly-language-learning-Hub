org 100h

mov cx,10
print_loop:
add ax,cx
loop print_loop
mov ah,4ch
int 21h   

ret