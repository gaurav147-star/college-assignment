;macro banake letter print krna h

print macro p1
mov dx, offset var1
mov ah,9
int 21h      
endm
org 100h
.model small

.data
 var1 db 'myself gaurav gupta$'
 var2 db 'from it branch$'
.code
main proc

mov ax ,@data
mov ds ,ax

print str1
print str2

mov ah,4ch
int 21h

main endp
end main