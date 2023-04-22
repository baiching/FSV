active proctype P(){
	int value;

	if
	:: select(value: 0 .. 2) -> value++
	:: printf("%d\n", value)
	fi
}
