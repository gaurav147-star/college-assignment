;Print 0 to 9

org 100h
.model small

.data
.code
main proc

mov dl,48
mov cx,10
l1:

mov ah,2
int 21h
add dl,1
loop l1

mov ah,4ch
int 21h

main endp
end main