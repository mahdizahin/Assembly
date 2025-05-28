INCLUDE 'EMU8086.INC'

.MODEL SMALL
.STACK 100H
.DATA 
    COUNT DB 0
.CODE

MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BX,0             ; BX ? ??????? ?????? ??? ???
    MOV AH,1
    PRINT "ENTER BINARY NUMBER:"

    ;------- Binary Input -------
    FOR1:
        INT 21H              ; Take input character
        CMP AL,0DH           ; Check for Enter key
        JE END_FOR1
        SUB AL,48            ; Convert ASCII to binary (0 or 1)
        SHL BX,1             ; Shift previous bits left
        OR BL,AL             ; Add current bit
        INC COUNT            ; Count bits
        JMP FOR1
    END_FOR1:

    ;------- Hex Output -------
    PRINTN
    PRINT "HEX OUTPUT:"

    MOV CX, COUNT
    XOR DX,DX               ; Clear DX for mod
    XOR SI,SI               ; Use SI as counter/index

    ; Count bits, align to nearest nibble (4 bits)
    MOV DL,COUNT
    MOV CL,4
    MOV AH,0
    DIV CL                  ; AX / 4
    CMP AH,0
    JE NO_PADDING
    ADD AL,1                ; If remainder, one extra nibble
    NO_PADDING:
    MOV CL,AL               ; Total nibbles to process

    MOV AH,2
    HEX_LOOP:
        MOV DL,BH
        SHR DL,4            ; Take high nibble first
        SHL BX,4            ; Shift left for next nibble

        CMP DL,10
        JL PRINT_NUM
        ADD DL,55           ; 'A' to 'F'
        INT 21H
        JMP NEXT

    PRINT_NUM:
        ADD DL,48           ; '0' to '9'
        INT 21H

    NEXT:
        LOOP HEX_LOOP

    MOV AH,4CH
    INT 21H
MAIN ENDP 
END MAIN
