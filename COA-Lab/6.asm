;take two input from user and compare value and print msg that "both are equal" or " both are not equal"
org 100h
.model small
.data

msg1 dw "the numbers are definately equal$"
msg2 dw "the numbers are obviosly not equal $"

.code
main proc

l1:
mov ah,1
int 21h
mov dl,al
mov ah,1
int 21h
cmp al,dl
JE l2
JNE l3
l2:

mov dx,13
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h

mov dx,offset msg1
mov ah,9
int 21h
mov ah, 0
int 21h
l3:

mov dx,13
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h

mov dx,offset msg2
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main