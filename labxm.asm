.MODEL SMALL 
.STACK 100H 
.DATA 
    DIGIT1 DB "ENTER FIRST DIGIT: $" 
    DIGIT2 DB "ENTER SECOND DIGIT: $" 
    RESULT DB "RESULT IS $" 
.CODE 
    MAIN: 
        MOV AX, @DATA 
        MOV DS, AX 
         
        LEA DX, DIGIT1 
        MOV AH, 09H 
        INT 21H 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV BH, AL 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV BL, AL ; BH:BL FIRST NUMBER 
         
        LEA DX, DIGIT2 
        MOV AH, 09H 
        INT 21H 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV CH, AL 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV CL, AL ; CH:CL SECOND NUMBER 
         
        ADD BL, CL 
         
        MOV AL, BL 
        MOV AH, 00H 
        AAA 
         
        MOV CL, AL ; LAST DIGIT OF ANSWER 
        MOV BL, AH 
         
        ADD BL, BH 
        ADD BL, CH 
         
        MOV AL, BL 
        MOV AH, 00H 
        AAA 
         
        MOV BX, AX  
        
        MOV DX, OFFSET RESULT 
        MOV AH, 09H 
        INT 21H 
         
        MOV DL, BH 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, BL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, CL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H
        
        ;FOR SUBTRACTION
        
        SUB BL,BH 
        SUB BL, CH  
        
        MOV DX, OFFSET RESULT 
        MOV AH, 09H 
        INT 21H 
         
        MOV DL, BH 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, BL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, CL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H
         
    EXIT: 
        MOV AH, 04CH 
        INT 21H 
    END MAIN  