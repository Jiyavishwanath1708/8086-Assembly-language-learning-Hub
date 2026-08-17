
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
;print a character program

mov dl,'A'
mov ah,02h
int 21h

ret




