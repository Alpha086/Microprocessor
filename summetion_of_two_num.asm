.model small
.stack 100h
.data

mgs1 db "Enter your num 1: $"
mgs2 db "Enter your num 2: $" 
mgs3 db "Sum of two number: $"

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
    
    
    mov ah,09
    lea dx,mgs1
    int 21h
    
    mov ah,01
    int 21h
    
    mov bl,al
    int 21h
    
     
    
    newline  
    
    mov ah,09
    lea dx,mgs2
    int 21h 
    
    mov ah,1
    int 21h 
    
    mov bh,al
    int 21h  
    
    
    newline
    
    
    
    sub bh,48
    sub bl,48 
    
    
    lea dx,mgs3
    mov ah,9
    int 21h
    
    add bh,bl
    add bh,48
    mov dl,bh
    mov ah,2
    int 21h
 
    
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endm

end main
    
    

    
    