//keralineOS (2026) (distrubtion of this code is allowed.)
#include "kernel/Crash_handler/kernel_panic_handler.h" // kernel panic handler
#include "kernel/Krnlcall/krnlcall.h" //so we can collect data from krnlcall.
#include "kernel/IPC/IPC.h" // collect data from ipc 
int main(){
unsigned char error_msg1[512];
unsigned char error_msg2[512];
unsigned int error_code;
void shared_overflow_error_code(){
error_code = 0x00000001;
char error_msg1[512] = "KERNEL PANIC MEMORY REGION FAULT A PROCESSS HAS ESCAPED SHARED MEMORY REGION.";
char error_msg2[512] = "IN ORDER TO PROTECT SYSTEM PROCESSES AND GENERAL PROCESSES A KERNEL PANIC HAS BEEN ENGAGED.";} //memory region fault. 
 void shared_overflow(){
if (panic_trigger == 1)
{shared_overflow_error_code();} 
}
shared_overflow();
 
}
