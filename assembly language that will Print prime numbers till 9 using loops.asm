.model small
.data 
msg1 db 0ah,0dh, '$'
a db 50
b db 51

.code 

mov ax,@data
mov ds,ax 

mov cl,9
mov dl,49


l:

mov ax,dx
mov bl,2
cmp ax,50
je print
div bl
cmp ah,0
je even

mov ax,dx
mov bl,3
cmp ax,51
je print
div bl
cmp ah,0
je even

print:
mov ax,dx
mov ah,2
int 21h
inc dl
loop l


even:
inc dl
loop l: