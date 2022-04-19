;Take two digit from user and perform addition and print output.
org 100h

.model small
.data
.code
main proc


mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h
mov cl,al
sub bl,30h
sub cl,30h

add bl,cl
add bl,30h

mov dl,bl
mov ah,2
int 21h

mov ah,4ch
int 21h


main endp
end main

