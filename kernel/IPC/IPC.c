#include "Memory/Memcall.h"
#include "IPC.h"
int main()
{

int read_data = 0;
  
int write_data = 0;
  
int interrupt = 0;
  
int processes = 0;

int current_process = 0;

int process1_base1 = 0;

int process2_base2 = 0;
  
int base_1 = process1_base1;
int base_2 = process2_base2;

int memory_base_val = base_1;
int *memory_base = &memory_base_val; 

int memory_base2_val = base_2;
int *memory_base2 = &memory_base2_val; 

int total_shared_memory = (memory_base - memory_base2);

int  inline_pointer_val = memory_base_val;
int  *inline_pointer = &inline_pointer_val;

if (inline_pointer_val == memory_base_val){inline_pointer_val++;}
if (inline_pointer_val == memory_base2_val){inline_pointer_val--;}

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
