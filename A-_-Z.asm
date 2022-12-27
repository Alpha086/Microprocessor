.model small
.stack 100h
.data

a db 'loop concept $'
s db ' $'

.code 


newline macro
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    endm



main proc
    mov ax,@data
    mov ds,ax
    
    
    
    mov cx,25 
    mov bl,'A'
    mov ah,2 
    
    
    
    

 
    level:
    mov dl,bl  
    
    int 21h 
    
    newline 
    
    inc bl 
    
    
    
    
    
     
    
    
    loop level


 
    
    
    
   
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    