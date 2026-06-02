# keraline os.
Keraline os is a custom os that i have been developing for days.

Its lightweight like under 10mb compared to other oses this is great.
..
Keraline os only supports bios. it might support bios and uefi in the future.

Keraline os is also currently only for x86_64 systems. risc-v and arm, might be avaible in the future.
# file documentation.
The kernel folder is for critical parts of the os. Like krnlcalls.
Basically a layer between the os and hardware.
The Arch folder is designed for the kernel to get things like interrupts depending on the cpu architecture.
the ipc folder in the kernel is for inter-process-communication ipc is the sharing of data between running processes in a computer system.
the cpu folder in the kernel is for the kernel to acess the cpu from the arch folder. 
the init folder is for process-initalization aka to start os processes.
the bootloader folder is so the kernel os and everything can load in and run. Think of it as oil in gears.
the XFAT folder in the kernel is keraline oses filesystem.
the crash handler folder in the kernel is to handle crashes/errors.
the disk folder in the kernel i think is obvious its for the disk control.
the Krnlcall folder in the kernel is basically keraline oses syscall named diffrently.
the Memory folder int the kernel is for Memory handling. (i think thats obvious)
the panic folder in the kernel is for handling when the kernel panics.
the kernel verify folder is how the bootloader identifys if the kernel is there to contiune booting or if its a offical kernel. (i think it was a diabolical feature i might remove it.)
