org 100h

.data
msg1 db 'Enter first number: $'
msg2 db 0Dh,0Ah,'Enter operator (+,-,*,/): $'
msg3 db 0Dh,0Ah,'Enter second number: $'
msg4 db 0Dh,0Ah,'Result: $'

.code
start:

; First number
mov ah,09h
lea dx,msg1
int 21h

mov ah,01h
int 21h
sub al,30h
mov bl,al

; Operator
mov ah,09h
lea dx,msg2
int 21h

mov ah,01h
int 21h
mov bh,al

; Second number
mov ah,09h
lea dx,msg3
int 21h

mov ah,01h
int 21h
sub al,30h
mov cl,al

; Put first number in AL
mov al,bl

; Check operator
cmp bh,'+'
je addn

cmp bh,'-'
je subn

cmp bh,'*'
je muln

cmp bh,'/'
je divn

jmp exit

; Addition
addn:
    add al,cl
    jmp save_result

; Subtraction
subn:
    sub al,cl
    jmp save_result

; Multiplication
muln:
    mov ah,0
    mul cl
    jmp save_result

; Division
divn:
    mov ah,0
    div cl
    jmp save_result

; Save result
save_result:
    mov si,ax

; Print "Result:"
    mov ah,09h
    lea dx,msg4
    int 21h

; Restore result
    mov ax,si

; Check single or double digit
    cmp al,10
    jl single_digit

; Two digit result
    mov ah,0
    mov bl,10
    div bl

; Print tens
    add al,30h
    mov dl,al
    mov ah,02h
    int 21h

; Print units
    mov al,ah
    add al,30h
    mov dl,al
    mov ah,02h
    int 21h
    jmp exit

; Single digit
single_digit:
    add al,30h
    mov dl,al
    mov ah,02h
    int 21h

exit:
    mov ax,4c00h
    int 21h