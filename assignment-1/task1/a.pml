active proctype P(){
       int value;
	select(value: 0 .. 2);
	printf("%d\n", value);

	/*do
	:: value < 21 -> value++
	:: printf("%d", value)
	:: break
	od */
}
