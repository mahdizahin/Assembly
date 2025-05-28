INCLUDE 'EMU8086.INC'

.MODEL SMALL
.STACK 100H
.DATA 

.CODE

MAIN PROC
    
     MOV BX,0
     MOV CL,4
     PRINT "ENTER HEX NUMBER:"
     MOV AH,1 
     
     FOR1:
     INT 21H
     CMP AL,0DH
     JE END_FOR
     
     CMP AL,41H
     JGE LETTER 
     
     SUB AL,48
     JMP SHIFT
     
     LETTER:
     SUB AL,37H
     
     SHIFT:
     SHL BX,CL
     OR BL,CL
     JMP FOR1
     
     END_FOR:
     
     PRINTN
     MOV AH,2
     MOV DL,BL
     INT 21H
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
