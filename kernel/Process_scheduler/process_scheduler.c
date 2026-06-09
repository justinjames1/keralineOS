int main()
{
int process_name = 0;
int pid = 20;
int processes = 50;
int current = 0;
int process_piroity = 1;

process_name = pid;

void process_piroity_create(){
if (current < processes)
{process_piroity_create();}
current++;

process_name = process_piroity;
process_piroity++; //process piroity feature isnt expected to work ima fix it later
}
process_piroity_create();

}
