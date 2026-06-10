//keralineOS (2026) (distrubtion of this code is allowed.)
#include "kernel/Krnlcall/krnlcall.h" //so we can collect data from krnlcall.
#include "kernel/IPC/IPC.h" // collect data from ipc 
int main(){

unsigned int error_code;
void shared_overflow_error_code()
{error_code = 0x00000001} //memory region fault. 
 void shared_overflow(){
if (panic_trigger == 1)
{shared_overflow_error_code();} 
}
shared_overflow();
 
}
