.MODEL SMALL
.STACK 100H
.DATA    
.CODE

MAIN PROC  
    
    MOV BL,3
    MOV BH,5
    
    
    XCHG BL,BH
    
    MOV AH,2  
    ADD BL,48
    MOV DL,BL
    INT 21H
    
    ADD BH  ,48
    MOV DL,BH
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN