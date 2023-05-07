#define N 2

proctype P(){
	int counter = 0;
	do
	:: counter<N -> printf("P␣\n"); counter++
	:: else -> break
	od

}

proctype Q(){
	int counter = 0;
        do
        :: counter<N -> printf("Q␣\n"); counter++
        :: else -> break
        od

}

init {
	atomic{
		run P();
		run Q();
	}
}
