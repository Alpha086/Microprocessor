.model small
.stack 100h
.data

.code


main proc
    
    mov cx,5
    mov ax,1
    
    level: 
        
        
        mov dx,cx
        mul dx  
   
        loop level 

   
   
   mov ah,4ch
   int 21h
   
   main endp
end main