;print array element using loop
org 100h
.model small

.data
 var1 db 'g','a','u','r','a','v'

.code
main proc

mov ax ,@data
mov ds ,ax
mov si,offset var1
mov cx,6

I1:
mov dx,[si]
mov ah,2
int 21h
inc si
loop I1

mov ah,4ch
int 21h

main endp
end main