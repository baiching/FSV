#define N 10
#define M 0
chan ourchannel = [M] of { int }

active proctype P() {
 
	
	
	atomic{
		ourchannel?10;ourchannel?9;ourchannel?8;ourchannel?7;ourchannel?6;
ourchannel?5;ourchannel?4;ourchannel?3;ourchannel?2;ourchannel?1
	
	}
}





