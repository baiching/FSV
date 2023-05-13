int val=0
proctype fibo(int n){
        if
        :: n<0 -> printf("Incorrect input\n")
        :: n == 0 -> val = 0
        :: n ==1 || n == 2 -> val = 1
        :: else run fibo(n - 1); run fibo(n - 2)
        fi

}



init(){
        
	run fib(5)
	
        
}
