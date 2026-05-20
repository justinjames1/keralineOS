
apk add nasm
apk add gcc
nasm -f bin BOOTSECTION.asm -o BOOTSECTION.bin
cc Commandprompt.c -o Commandprompt.bin
cc Diskmanage.c -o Diskmanage.bin
cc Interrupt.c -o Interupt.bin
cc Krnlcall.c.c -o Krnlcall.bin
cc Memcall.c -o Memcall.bin
cc Panic.c -o Panic.bin
cc Process_scheduler.c -o Process_scheduler.bin
nasm -f bin VGAcontrol.asm -o VGAcontrol.bin
