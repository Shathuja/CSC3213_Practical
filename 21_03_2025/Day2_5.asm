.model small
.stack 100h

.data
    num1 db 2           
    num2 db 3           
    msg1 db "Number01: 2$"
    msg2 db "Number02: 3$"
    msg3 db " Addition of num1 and num2: $"
    result db 0       

.code
main:
    mov ax, @data
    mov ds, ax

    
    mov ah, 09h
    lea dx, msg1
    int 21h

mov dl,10
mov ah,02h
int 21h

   
    mov ah, 09h
    lea dx, msg2
    int 21h

    mov dl,10
mov ah,02h
int 21h

    mov ah, 09h
    lea dx, msg3
    int 21h

    
    mov al, [num1]     
    add al, [num2]
    mov [result], al


    add al, '0'
    mov dl, al          


    mov ah, 02h
    int 21h


    mov ah, 4Ch
    int 21h

end main
