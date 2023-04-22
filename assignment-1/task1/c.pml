active proctype P(){
	int value;
	
	do
	:: select(value: 0 .. 2)
	:: printf("%d\n", value)
	:: break
	od

}
