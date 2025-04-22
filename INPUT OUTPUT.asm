.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
      
     MOV AH,1  ;TAKING INPUT. OUTPUT DEKHANOR JONNO MOV AH,2 USE KORA LAGE
     INT 21H
     
     MOV BL,AL
      
     MOV AH,2        ;OUTPUT
     MOV DL,BL  
     INT 21H
    
     MOV AH,4CH
     INT 21H
    
    
    MAIN ENDP
END MAIN