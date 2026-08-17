org 100h

;write an assembly program compare the values in al register and to print a result

.data
msg1 db 'Greater$'
msg2 db 'Smaller$'     
.code
main proc
    mov ax,@data
    mov ds,ax
    mov al,7
    cmp al,5
    jg greater
    smaller:
    mov dx,offset msg2
    mov ah,09h
    int 21h
    jmp end_prog
    greater:
    mov dx,offset msg1
    mov ah,09h
    int 21h
    end_prog:
    mov ah,4ch
    int 21h
    main endp


ret




