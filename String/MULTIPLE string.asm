;MAHDI ZAHIN

.MODEL
.STACK 100H
.DATA 

STRING_1 DB "STRING 1 $" 
STRING_2 DB "STRING 2 $"


.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,STRING_1
    MOV AH,9
    INT 21H  
    
    MOV AH,2
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H   
    
   
    
    
    LEA DX,STRING_2
    MOV AH,9
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN