.MODEL SMALL
.STACK 100H
.DATA  
MSG DB "FOR LOOP IN ASSEMBLY $"

.CODE

MAIN PROC  
    
    MOV CX,5                   
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA AX,MSG
    MOV AH,9
      
    
    LEVEL:
    INT 21H
    LOOP LEVEL
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
