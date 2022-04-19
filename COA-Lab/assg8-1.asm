;Write a assembly program to take two numbers from user and perform swapping using stack and print them after swapping.

org 100h

.model small
.stack 100h
.data
msg1 db "Enter Numbers- $"
msg2 db "Numbers after swap- $"
 
.code
main proc      
 mov ax,@data 
 mov ds,ax
 lea dx, msg1
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 mov dl,al
         
 push dx         
          
 mov ah,1
 int 21h
 mov dl,al
 
 push dx  
 
 mov dl,10
 mov ah,2
 int 21h

 mov dl,13
 mov ah,2
 int 21h
  
 lea dx, msg2
 mov ah,9
 int 21h

 pop  dx 
 mov ah,2
 int 21h
 pop dx
 mov ah,2
 int 21h

mov ah,4ch
int 21h

main endp
end main
              
