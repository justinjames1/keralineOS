int main(){

int Cores = 18;
unsigned int CoresUsed;
unsigned int AssignCore = 0;
unsigned int process_pid;
while (CoresUsed > Cores){ //thread scheduling. [used when theres more processes exist then cores.]
Cores - CoresUsed;
if (AssignCore == Cores){AssignCore--;} 
void assign(){
CoresUsed++;
}
assign();
}
while (CoresUsed < Cores){ //assign scheduling. [used when less processes exist then cores.]
Cores - CoresUsed;
if (AssignCore == Cores){AssignCore--;}
void assign(){
CoresUsed++;
}
assign();
}
void UnassignCore(){Cores++; CoresUsed++;}



}
