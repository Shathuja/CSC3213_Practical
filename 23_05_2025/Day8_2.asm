.model small
.stack 100h

.data
marks db "Enter the marks:$"
m1 db 0
m2 db 0
dig db 0
A db "A$"
B db "B$"
C db "C$"
D db "D$"
E db "Fail$"

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset marks
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,48
mov m1,al

mov ah,01h
int 21h

sub al,48
mov m2,al


mov dl,10
mov ah,02h
int 21h

mov al,m1
mov bl,10
mul bl
add al,m2
mov dig,al

cmp dig,90
jge passA
cmp dig,75
jge passB
cmp dig,60
jge passC
cmp dig,50
jge passD
jl fail

passA:
mov dx,offset A
mov ah,09h
int 21h
jmp endn

passB:
mov dx,offset B
mov ah,09h
int 21h
jmp endn

passC:
mov dx,offset C
mov ah,09h
int 21h
jmp endn

passD:
mov dx,offset D
mov ah,09h
int 21h
jmp endn

fail:
mov dx,offset E
mov ah,09h
int 21h
jmp endn

endn:
mov ax,4c00h
int 21h

end