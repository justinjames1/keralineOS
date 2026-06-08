#include "Memory/Memcall.h"
#include "IPC.h"
int main()
{

int base_1 = 200;
int base_2 = 400;

int memory_base_val = base_1;
int *memory_base = &memory_base_val; 

int memory_base2_val = base_2;
int *memory_base2 = &memory_base2_val; 

int total_shared_memory = (memory_base - memory_base2);

int  inline_pointer_val = memory_base_val;
int  *inline_pointer = &inline_pointer_val;

if (inline_pointer_val == memory_base_val){inline_pointer_val--;}
if (inline_pointer_val == memory_base2_val){inline_pointer_val--;}

void write(){}
void read(){}

}
