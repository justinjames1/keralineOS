//keralineOS (2026) (distrubtion of this code is allowed.)
#include "krnlcall.h" //so we can collect data from krnlcall.

int main(){
 //get register values for diagonostics
int rax_val = 0;
_asm_("mov [rax_val], rax");
int rbx_val = 0;
_asm_("mov [rbx_val], rbx");
int rcx_val = 0;
_asm_("mov [rcx_val], rcx"); 
int rdx_val = 0;
_asm_("mov [rdx_val], rdx");
int rsi_val = 0;
_asm_("mov [rsi_val], rsi");
int rdi_val = 0;
_asm_("mov [rdi_val], rdi");
int rbp_val = 0;
_asm_("mov [rbp_val], rbp");
int rsp_val = 0;
_asm_("mov [rsp_val], rsp");

int error_code = 0x00000000;
 
}
