.model small
.stack 100h

.data
    message db 'Hello, pookie!$'

.code
main:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Print the message
    mov ah, 09h           ; DOS function to display a string
    lea dx, message       ; Load address of the string into DX
    int 21h               ; Call interrupt 21h (DOS function)

    ; Exit the program
    mov ah, 4Ch           ; DOS function to exit the program
    int 21h               ; Call interrupt 21h

end main
.model small
.stack 100h

.data
    message db 'Hello, World!$'

.code
main:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Print the message
    mov ah, 09h           ; DOS function to display a string
    lea dx, message       ; Load address of the string into DX
    int 21h               ; Call interrupt 21h (DOS function)

    ; Exit the program
    mov ah, 4Ch           ; DOS function to exit the program
    int 21h               ; Call interrupt 21h

end main
