echo =====================================
echo starting kernaline os compilation....
echo =====================================
echo [warning if it says no directory]
echo [extract the zip file if you got off the github]
echo [take the files out of the kernaline os folder]
apk add unzip
apk add nasm
apk add gcc
unzip 
mv Kernel/root /root/


nasm -f bin BOOTSECTION.asm -o BOOTSECTION.bin
cc Commandprompt.c -o Commandprompt.bin
cc Diskmanage.c -o Diskmanage.bin
cc Interrupt.c -o Interupt.bin
cc Krnlcall.c.c -o Krnlcall.bin
cc Memcall.c -o Memcall.bin
cc Panic.c -o Panic.bin
cc Process_scheduler.c -o Process_scheduler.bin
nasm -f bin VGAcontrol.asm -o VGAcontrol.bin
echo =====================================
echo sucessfully compiled Kernaline os code.
echo =====================================
