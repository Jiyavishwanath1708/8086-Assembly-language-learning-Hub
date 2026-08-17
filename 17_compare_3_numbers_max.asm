org 100h

.data
 num1 db 45
 num2 db 40
 num3 db 55
 
.code
 main proc
    mov ax,@data
    mov ds,ax
    mov al,num1
    mov bl,num2
    mov cl,num3
    cmp al,bl
    jge check_with_cl
    mov al,bl
    check_with_cl:
    cmp al,cl
    jge print_result
    mov al,cl
    print_result:
    mov ah,4ch
    int 21h
    main endp
 end main
 
ret