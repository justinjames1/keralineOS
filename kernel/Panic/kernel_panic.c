//keralineOS (2026) (distrubtion of this code is allowed.)
#include "krnlcall.h" //so we can collect data from krnlcall.
void panic(){}
int main(){
 //get register values for diagonostics

 void register_dunp(){
unsigned int  rax_val = 0;
_asm_("mov [rax_val], rax");
unsigned int  rbx_val = 0;
_asm_("mov [rbx_val], rbx");
unsigned int  rcx_val = 0;
_asm_("mov [rcx_val], rcx"); 
unsigned int  rdx_val = 0;
_asm_("mov [rdx_val], rdx");
unsigned int  rsi_val = 0;
_asm_("mov [rsi_val], rsi");
unsigned int  rdi_val = 0;
_asm_("mov [rdi_val], rdi");
unsigned int  rbp_val = 0;
_asm_("mov [rbp_val], rbp");
unsigned int  rsp_val = 0;
_asm_("mov [rsp_val], rsp");
 }

 
}
