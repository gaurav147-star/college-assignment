;Write a assembly program to take input a string and print on the user screen  upto 100 character will be allowed
org 100h
.data
msg db 100 dup(?)


.code
main proc

    mov ax,@data
    mov ds,ax
    mov si,offset msg
input: 
    mov ah,1
    int 21h
    cmp al,13
    je display
    mov [si],al
    inc si
    jmp input

display: 
    mov [si],'$'
    mov di,offset msg

    mov dl,13
    mov ah,2
    int 21h

    mov dl,10
    mov ah,2
    int 21h

again: 
    cmp [di],'$'
    je last
    
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    jmp again


last: 
mov ah,4ch
int 21h

main endp
end main
