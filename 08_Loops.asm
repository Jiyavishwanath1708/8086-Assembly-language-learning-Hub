org 100h

; To display 1 to 5
.data
.code
main proc
    mov ax,@data
    mov cx,5
    mov ah,02h
    mov dl,'1'
my_loop:
int 21h
inc dl
loop my_loop
mov ah,4ch
int 21h
main endp                
                
                
                
ret




