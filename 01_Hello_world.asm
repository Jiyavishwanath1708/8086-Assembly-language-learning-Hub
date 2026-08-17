
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
msg db "Hello,World!$"
.code
mov dx offset msg;
;load address of string into dx
mov ah,09h
int 21h

ret




