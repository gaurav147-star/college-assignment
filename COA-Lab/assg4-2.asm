;Take input n as length of a string and then take input as character by character and print the name.
org 100h
.model small

.data
 var1 db 100 dup(?)
.code
main proc

mov ax ,@data
mov ds ,ax

mov ah, 1
int 21h



mov dx, offset var1
mov ah,9
int 21h

mov dx,13
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h



mov dx, offset var2
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main