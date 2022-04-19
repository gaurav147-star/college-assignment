;Take input n as length of a string and then take input as character by character and print the name.
org 100h
.model small

.data
 var1 db 100 dup(?)
.code
main proc

mov ax ,@data
mov ds ,ax 

mov si,offset var1

mov ah, 1
int 21h 
sub al,30h
mov cl,al
mov bl,al

mov dx,13
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h


mov si,0
l1:
mov ah, 1
int 21h
mov var1[si],al
inc si
loop l1

mov dx,13
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h

mov cx,bx
mov si,0
l2:
mov dl, var1[si]
mov ah,2
int 21h
inc si
loop l2

mov ah,4ch
int 21h

main endp
end main