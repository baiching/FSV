#define N 20

active proctype P(){
	int i;
	int values;
	int ar[N];
	int n = 0;

	for(i: 0 .. N){
		select(values: i .. N)
		printf("%d ", values)
	
	}

	/*do{
	::select(values: 1 .. N)
	::for(i: 0 .. n+1){
		ar[i] == values 
	} -> ar[n] = values
	:: n++
	:: (n > N) -> break
	
	}
	for(i: 0 .. N){
                
                printf("%d ", ar[i])

        }*/

	printf("\n");

}
