;Print the given pattern using nested loop 

org 100h

.model small
.stack 100h
mov bx,1
mov cx,6

loop1:
push cx
mov cx,bx

loop2:
mov ah,2
mov dl,'*'
int 21h
loop loop2

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

inc bx
pop cx

loop loop1

mov ah,4ch
int 21h

main endp
end main



