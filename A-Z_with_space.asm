.model
.stack 100h
.data

a db 'Printing A-Z with space: $'

.code


space macro
    mov ah,2
    mov dl,32
    int 21h
    
endm

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
    
    mov ah,9
    lea dx,a
    int 21h 
    newline
    newline
    
    
    mov cx,26
    mov bl,'A'
    
    
    mov ah,2
    
    level:
    
    mov dl,bl
    int 21h
    
    space
    
    inc bl
    
    loop level
    
    exit:
    
    mov ah,4ch
    
    main endp
end main
              
              
              