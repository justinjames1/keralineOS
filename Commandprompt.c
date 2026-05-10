#include <stdio.h> //replaced soon
#include <string.h> //replaced soon
int main(){
int T = 1;
int i = 40096;
char name[50];
scanf(”%s”, name);
printf(“C:/user/kernel/= %s”,name);
printf(”\n”);
int currentprocs = 0;
int processid = 0;
void createprocess(){
processid ++;
printf(“process created.\n”);
currentprocs ++ ;
int mem[i];}
void tasks(){
printf(“current processes are. “);
printf(”%d\n”,currentprocs);}
void panic(){
printf(”=============\n”);
printf(“KERNEL PANIC.\n”);
printf(”=============\n”);
printf(“ERROR 0X000000001\n”);}
void alloc(){
int mem[i];
printf(“allocated %d”,i);}
while (T == 1){
if (strcmp(name, “panic”) == 0){panic();}
if (strcmp(name, “createprocess”) == 0){createprocess();}
if (strcmp(name, “alloc”) == 0){alloc();}
break;}}
