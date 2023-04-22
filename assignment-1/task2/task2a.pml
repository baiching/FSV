#define N 10
active proctype P(){
	int value[N];
	int product = 1;

	int i;
	select(product: 1 .. 2)
	for(i : 0 .. N-1 ) {
		value[i] = product
	}

	for(i : 0 .. N-1) {
                printf("%d, ",value[i])
        }
	printf("\n");
}
