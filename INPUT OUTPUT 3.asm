;BY MAHDI ZAHIN
.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN