org 0x7C00
;16 bit 

;i hate evey fucking bit of this asm 

xor ax, ax
mov ds, ax


   mov si, title       
    mov ah, 0x0e  

.title_loop:        
    lodsb         
    or al, al       
    jz .next          
    int 0x10        
    jmp .title_loop   



.next:



    mov si, select       
    mov ah, 0x0e       

mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

.select_loop:        
    lodsb         
    or al, al       
    jz halt         
    int 0x10        
    jmp .select_loop 
    


halt:
hlt
nohlt:

select db "select a drive..", 0
title db "Kernaline os bootloader.", 0

Times 510 db 0
db 0x55, 0xaa 
