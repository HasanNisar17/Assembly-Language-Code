.model small 

.data

msg1 db 0ah,0dh, "Enter Character:  $"
msg2 db 0ah,0dh, "Total chracters entered are  $"
a db 30h
.code
  
  
mov ax,@data
mov ds,ax   


mov bl,0Dh
l1:
lea dx,msg1
mov ah,09
int 21h


mov ah,01
int 21h
cmp al,bl
je end
inc a

loop l1

end:
lea dx,msg2
mov ah,09
int 21h
mov al,a
mov dl,al
mov ah,2
int 21h


