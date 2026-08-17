org 100h

;write a program to add two number of 16-bit data output will display in memory
mov ax,[100h]
mov bx,[102h]
mov cl,00h
add ax,bx
mov [104h],ax
jnc jump
inc cl
jump:
 mov [100h],cl
 hlt

ret




