

#define FREE 2
#define year5 5
#define year20 20

mtype = {CONFESS, DENY}
chan p1 = [1] of {mtype};
chan p2 = [1] of {mtype}
active proctype P1(){
	byte b; 
	if
	:: p1 ! DENY 
	:: p1 ! CONFESS
	fi 
	p1 ? b;
	printf("prisonar 1 in jail %d\n", b)
}

active proctype P2(){
	byte c;
	if
        :: p2 ! DENY
        :: p2 ! CONFESS
        fi
	printf("prisonar 2 in jail %d\n", c)	

}

active proctype Police(){
	mtype var1;
	mtype var2;
	byte var3
	p1?var1;
	p2?var2;
	
	if	
	::var1 == CONFESS && var2 == CONFESS -> p1 ! year5; p2!year5
	::var1 == CONFESS && var2 == DENY -> p1 ! FREE; p2 ! year20
	::var1 == DENY && var2 == CONFESS -> p1 ! year20; p2 ! FREE
	fi
	


}


