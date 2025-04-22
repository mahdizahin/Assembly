.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    
    MOV AH,1 
    INT 21H
    
    MOV BL,AL
    INT 21H 
    MOV BH,AL
 
    
    ADD BL,BH 
      
    MOV AH,2
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H                       
    
    
    MOV AH,2 
    SUB BL,48
    MOV DL,BL
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN