[org 0x7C00]
[bits 16] 
cli
xor ax, ax
mov ds, ax
mov es, ax
mov ss, ax
mov sp, ax
sti ; if you dont believe it, search in google how should a bootloader set segments
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
NOENTER:
jmp halt
;e
halt:
hlt


mov al, 1
mov ah, 0
cmp ah, al
jz A_ESC
mov ah, 2 ;tell bios we are reading from disk.
mov al, 1 ;the total ammount of sectors.
mov ch, 1 ;cylinder
mov cl, 2 ;sector
mov dh, 0 ;head
mov bx, 0x7e00 ;move data read from the disk into a unassigned variable or smth
mov dl, 0 ;specify we are reading from the C: drive
int 0x13 ;disk controller interrupt
A_ESC: ;determines if we use A drive.



mov al, 1
mov ah, 0
cmp ah, al
jz B_ESC
mov ah, 2 ;tell bios we are reading from disk.
mov al, 1 ;the total ammount of sectors.
mov ch, 1 ;cylinder
mov cl, 2 ;sector
mov dh, 0 ;head
mov bx, 0x7e00 ;move data read from the disk into a unassigned variable or smth
mov dl, 1 ;specify we are reading from the C: drive
int 0x13 ;disk controller interrupt
B_ESC: ;determines if we use A drive.




mov al, 1
mov ah, 0
cmp ah, al
jz C_ESC
mov ah, 2 ;tell bios we are reading from disk.
mov al, 1 ;the total ammount of sectors.
mov ch, 1 ;cylinder
mov cl, 2 ;sector
mov dh, 0 ;head
mov bx, 0x7e00 ;move data read from the disk into a unassigned variable or smth
mov dl, 0x80 ;specify we are reading from the C: drive
int 0x13 ;disk controller interrupt
C_ESC:

;line 174 to 185 determines if we boot to the C drive.


mov al, 1
mov ah, 0
cmp ah, al
jz D_ESC
mov ah, 2 ;tell bios we are reading from disk.
mov al, 1 ;the total ammount of sectors.
mov ch, 1 ;cylinder
mov cl, 2 ;sector
mov dh, 0 ;head
mov bx, 0x7e00 ;move data read from the disk into a unassigned variable or smth
mov dl, 129 ;specify we are reading from the C: drive
int 0x13 ;disk controller interrupt
D_ESC: ;determines if we use A drive

cmp [es:0x7e00], 0xDF ;scan for kernel binary.
jmp 0x0000:0x7e00

beta db "BETA BUILD. DO NOT SHARE IMAGES OF A BETA BUILD..", 0
title db "Kernaline os bootloader.", 0
select db "select a drive..", 0
line db "================", 0
driveA db "drive A:", 0
driveB db "drive B:", 0
driveC db "drive C:", 0

Times 510-($-$$) db 0 ; how many times do i have to fix your errors? -Wasgyst | the compiler screamed because of this btw thats why. Also when we truncate it to 512 bytes. -justin | But when you truncate it to 512 bytes, in my computer the signature disappears -Wasgyst
db 0x55, 0xaa 
