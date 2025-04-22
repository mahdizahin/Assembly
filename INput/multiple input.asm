.MODEL 
.STACK 100H
.DATA
.CODE 

MAIN PROC   
    
     
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H 
    MOV BH,AL
    INT 21H
    MOV CL,AL  
    INT 21H
    
    
    
    MOV AH,2
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H  
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    MOV DL,BH
    INT 21H 
    MOV DL,CL
    INT 21H 
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN