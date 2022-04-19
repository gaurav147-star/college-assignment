;macro banake letter print krna h

print macro s1
mov dx, offset s1
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

print var1
print var2

mov ah,4ch
int 21h

main endp
end main