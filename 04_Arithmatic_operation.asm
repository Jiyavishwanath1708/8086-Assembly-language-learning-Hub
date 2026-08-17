
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Arithmatic oprations

;01_addition
mov ah,5
add al,3

;02_substraction
mov al,5
sub al,3

;03_divison
mov ax,203
mov bl,4
div bl
            
;04_multiplaction
mov al,200
mov bl,4
mul bl
            
            
ret




