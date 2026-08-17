org 100h
.data
msg1 db 'Enter a word!:$'
msg2 db 0dh,0ah,'Total vowels:$'
.code
start:
mov ah,09h
lea dx,msg1
int 21h

xor cx,cx
read_char:
mov ah,01h
int 21h
cmp al,0Dh
je display_result
cmp al,'A'
jl skip_check
cmp al,'Z'
jg skip_check
add al,32
skip_check:
cmp al,'a'
je vowel
cmp al,'e'
je vowel
cmp al,'i'
je vowel 
cmp al,'o'
je vowel 
cmp al,'u'
je vowel
jmp read_char
vowel:
inc cx
jmp read_char
display_result:
mov ah,09h
lea dx,msg2
int 21h
mov ax,cx
add al,30h
mov dl,al
mov ah,02h
int 21h
mov ah,4ch
int 21h
end start