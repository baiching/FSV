#define N 10
active proctype P(){
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
        printf("%d\n", product);
}
