;Print your name using variable [string] in assembly
org 100h
.model small

.data
 var1 db 'myself gaurav gupta$'
.code
main proc

mov ax ,@data
mov ds ,ax
mov dx, offset var1

mov ah,9
int 21h


mov ah,4ch
int 21h

main endp
end main