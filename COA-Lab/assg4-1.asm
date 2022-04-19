;program to print two string in two lines
org 100h
.model small

.data
 var1 db 'myself gaurav gupta$'
 var2 db 'from it branch$'
.code
main proc

mov ax ,@data
mov ds ,ax
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