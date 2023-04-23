#define N 10
proctype P1(){
        int value[N];
        int product = 1;

        int i;
        select(product: 1 .. 2)
        for(i : 0 .. N-1 ) {
                value[i] = product
        }
	
	printf("\nProcess 1 is triggered :\n");

        for(i : 0 .. N-1) {
                printf("%d, ",value[i])
        }
        printf(",,,\n");
}

proctype P2(){
        int value[N];
        int product = 1;
        int randN;

        int i;
        select(randN: 1 .. 2)
        for(i : 0 .. N-1 ) {
                value[i] = randN
        }

        for(i : 0 .. N-1) {
               product = product * value[i]
        }
        printf("\nProcess 2 is triggered : %d\n", product);
}

init
{
	run P1()
	run P2() 
}
