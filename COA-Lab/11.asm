;Write an assembly program to print reverse of a string take input from user.
org 100h

.model small
.stack 100h
.data
.code   
    mov cx,0
    mov ah,1
    int 21h   
          ;ja
  L1:  
   cmp al,0dh
   JE L2
   push ax
   INC cx
   int 21h
   JMP L1
    
  L2:     
    mov dl,13
    mov ah,2
    int 21h

    mov dl,10
    mov ah,2
    int 21h


   
  Top:
   pop dx
   int 21h
   Loop Top
  
    
    
    mov ah,4ch
    int 21h
    
ret
