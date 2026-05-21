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
cc Commandprompt.c -o Commandprompt.bin
cc Diskmanage.c -o Diskmanage.bin
cc Interrupt.c -o Interupt.bin
cc Krnlcall.c -o Krnlcall.bin
cc Memcall.c -o Memcall.bin
cc Panic.c -o Panic.bin
cc Process_scheduler.c -o Process_scheduler.bin
nasm -f bin VGAcontrol.asm -o VGAcontrol.bin


echo =====================================
echo sucessfully compiled Kernaline os code.
echo =====================================
echo now deleting unneeded os files....
rm BOOTSECTION.asm
rm Commandprmot.c
rm Diskmanage.c
rm Interrupt.c
rm Krnlcall.c
rm Memcall.c
rm Panic.c
rm Process_scheduler.c
echo =====================================
echo sucessfully completed installation.
echo =====================================
