;mahdi zahin
.MODEL SMALL
.STACK 100H
.DATA 
.CODE

MAIN PROC
    ;INPUT
    MOV AH,1
    INT 21H
    ;STORING AL IN BL
    MOV BL,AL   
    
    ;NEW LINE
    MOV AH,2
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    
    ;OUTPUT
    MOV AH,2
    MOV DL,BL
    INT 21H
    
     
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN