;Take one character(capital) from user input and convert it into lowercase.
org 100h
.model small
.data
.code
main proc

mov ah, 1
int 21h
mov dl,al
add dl , 32

mov ah ,2
int 21h

mov ah,4ch
int 21h

main endp
end main