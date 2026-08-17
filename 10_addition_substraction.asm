org 100h

mov al, 5
mov bl, 3

; Addition
add al, bl
add al, 30h
mov dl, al
mov ah, 02h
int 21h

; New line
mov dl, 10
mov ah, 02h
int 21h

; Subtraction
mov al, 5
sub al, bl
add al, 30h
mov dl, al
mov ah, 02h
int 21h

mov ah, 4ch
int 21h