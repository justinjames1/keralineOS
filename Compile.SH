echo =====================================
echo starting kernaline os compilation....
echo =====================================
echo installing kernaline os files please wait...
git clone https://github.com/justindude057-collab/KERALINE-OS.git
apk add unzip
apk add nasm
apk add gcc
echo preparing files for compileing.....
mv KERALINE-OS/* .
mv kernel/* .
echo comepleted preping files for compilation.

nasm -f bin BOOTSECTION.asm -o BOOTSECTION.bin
cc Diskmanage.h -o Diskmanage.bin
cc Diskmanage_code.c -o Diskmanage_code.bin
cc Intterupt.h -o Intterupt.bin
cc Interrupt_code.c -o Interrupt_code.bin
cc Memcall.h -o Memcall.bin
cc Memcall_code.c -o Memcall_code.bim
cc Panic.c -o Panic.bin
cc Process_scheduler.c -o Process_scheduler.bin
nasm -f bin VGAcontrol.asm -o VGAcontrol.bin
cc Commandprompt.c -o Commandprompt.bin

echo =====================================
echo sucessfully compiled Kernaline os code.
echo =====================================
echo now deleting unneeded os files....
rm BOOTSECTION.asm
rm Commandprompt.c
rm Diskmanage.c
rm Interrupt.c
rm Krnlcall.c
rm Memcall.c
rm Panic.c
rm Process_scheduler.c


mv Diskmanage.bin /root/kernel
mv Interupt.bin /root/kernel
mv Krnlcall.bin /root/kernel
mv Memcall.bin /root/kernel
mv Panic.bin /root/kernel
mv Process_scheduler.bin /root/kernel
mv VGAcontrol.bin /root/kernel
echo =====================================
echo sucessfully completed installation.
echo =====================================
