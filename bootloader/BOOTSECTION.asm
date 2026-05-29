
org 0x7C00
;16 bit 

;i hate evey fucking bit of this asm 

    mov si, beta     
    mov ah, 0x0e       

mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

.beta_loop:        
    lodsb         
    or al, al       
    jz .beta         
    int 0x10        
    jmp .beta_loop 

.beta:

mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

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
    jz .next1         
    int 0x10        
    jmp .select_loop 
    
.next1:

    mov si, line       
    mov ah, 0x0e       

mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

.line_loop:        
    lodsb         
    or al, al       
    jz next2         
    int 0x10        
    jmp .line_loop 

next2:

    mov si, driveA       
    mov ah, 0x0e       

mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

.driveA_loop:        
    lodsb         
    or al, al       
    jz next3       
    int 0x10        
    jmp .driveA_loop 

next3:

    mov si, driveB      
    mov ah, 0x0e       

mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

.driveB_loop:        
    lodsb         
    or al, al       
    jz next4         
    int 0x10        
    jmp .driveB_loop 

next4:

    mov si, driveC     
    mov ah, 0x0e       

mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

.driveC_loop:        
    lodsb         
    or al, al       
    jz e
    int 0x10        
    jmp .driveC_loop 

e:

int 0x0e 
mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10
;e
mov ah, 0x0E
mov Al, '#'
int 0x10
mov Al, ':'
int 0x10

start:
mov ah, 0
Int 0x16
mov ah, 0x0E
int 0x10

mov ah, 0
Int 16h
cmp ah, 1Ch
Jz NOENTER

int 0x0e 
mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

mov Al, '#'
int 0x10
mov Al, ':'
int 0x10
NOENTER
jmp halt
;e
halt:
hlt

mov al, 8 ;bootloader jmp confirmed.

;jump to kernel space code. demo.

beta db "BETA BUILD. DO NOT SHARE IMAGES OF A BETA BUILD..", 0
title db "Kernaline os bootloader.", 0
select db "select a drive..", 0
line db "================", 0
driveA db "drive A:", 0
driveB db "drive B:", 0
driveC db "drive C:", 0

Times 510 db 0 ; how many times do i have to fix your errors? -Wasgyst | the compiler screamed because of this btw thats why. -justin
db 0x55, 0xaa 
