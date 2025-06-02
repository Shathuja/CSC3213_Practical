.model small
.stack 100h

.data
msg db "Enter the number:"
n db 0

.code


mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,09h
int 21h

call read
call newline
call print

mov ax,4c00h
int 21h

proc read
mov ah,01h
int 21h
sub al,48
mov n,al

ret
endp

proc  newline
mov dl,10
mov ah,02h
int 21h

ret
endp

proc print
mov dl,n
add dl,48
mov ah,02h
int 21h

ret
endp

end