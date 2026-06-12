#include "Memory/Memcall.h"
#include "IPC.h"
int main()
{
  
int base_1 = process1_base1;
int base_2 = process2_base2; //define shared regions between processes

int memory_base_val = base_1;
int *memory_base = &memory_base_val; 

int memory_base2_val = base_2;
int *memory_base2 = &memory_base2_val; 

int total_shared_memory = (memory_base - memory_base2);

int  inline_pointer_val = memory_base_val;
int  *inline_pointer = &inline_pointer_val;

if (inline_pointer_val == memory_base_val){inline_pointer_val++;}
if (inline_pointer_val == memory_base2_val){inline_pointer_val--;}

if (inline_pointer_val < memory_base_val){panic_trigger = 1;}
else {panic_trigger = 0;}
if (inline_pointer_val > memory_base2_val){panic_trigger = 1}
else {panic_trigger = 0;}
  
  //prevent the shared region pointer from going beyond the region.

void multi_ipc(){
while(processes > current_process)
{multi_ipc();
current_process++;
if(current_process == processes){current_process = 0;}
if(interrupt == 1}{current_process--;}
else {interrupt = 0;}
}
multi_ipc();


  
void write(){
interrupt = 1; //interrupt to write.
}
void read(){
interrupt = 1; //interrupt to read.
}

}
