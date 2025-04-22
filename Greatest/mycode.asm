                   
.MODEL SMALL
.STACK 100H

.DATA
MSG DB "d$"     

.CODE
MAIN PROC
    MOV AX, @DATA      
    MOV DS, AX

     
    MOV AL, 9          
    MOV BL, 4           
    MOV CL, 7          

     
    CMP AL, BL
    JAE SKIP1           
    MOV AL, BL         

SKIP1:
   
    CMP AL, CL
    JAE SKIP2         
    MOV AL, CL         

SKIP2:
   

    LEA DX, MSG       
    MOV AH, 9
    INT 21H
    
    ADD AL, 30H        
    MOV DL, AL
    MOV AH, 2
    INT 21H

    
    MOV AH, 4CH
    INT 21H

    MAIN ENDP
END MAIN
