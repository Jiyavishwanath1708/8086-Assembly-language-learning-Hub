            org 100h

mov al, 17
mov bl, 5

div bl

; AL = quotient = 3
; AH = remainder = 2

mov ah, 4ch
int 21h