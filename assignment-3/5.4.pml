mtype ={COMMAND, END}

chan ctl0 = [1] of {mtype}

chan ctl1 = [1] of {mtype}
chan ctl2 = [1] of {mtype}
chan ctl3 = [1] of {mtype}
chan ctl4 = [1] of {mtype}

byte pilar0 = 0
byte pilar1 = 1
byte pilar2 = 0
byte pilar3 = 1
byte pilar4 = 1

active proctype ControlPilar0(){
	mtype com;
	
	
	
	do
	::atomic { ctl0 ? com ->
		if
		::com == COMMAND -> pilar0 = 1; pilar1 = 1; pilar4 = 1
		::com == END -> break
		fi
	}
	od
	

}

active proctype ControlPilar1(){
        mtype com;



        do
        ::atomic { ctl1 ? com ->
                if
                ::com == COMMAND -> pilar0 = 1; pilar1 = 1; pilar2 = 1
                ::com == END -> break
                fi
        }
        od

}

active proctype ControlPilar2(){
      mtype com;



        do
        ::atomic { ctl2 ? com ->
                if
                ::com == COMMAND -> pilar1 = 1; pilar2 = 1; pilar3 = 1
                ::com == END -> break
                fi
        }
        od

}

active proctype ControlPilar3(){
        mtype com;



        do
        ::atomic { ctl3 ? com ->
                if
                ::com == COMMAND -> pilar2 = 1; pilar3 = 1; pilar4 = 1
                ::com == END -> break
                fi
        }
        od

}

active proctype ControlPilar4(){
        mtype com;



        do
        ::atomic { ctl4 ? com ->
                if
                ::com == COMMAND -> pilar0 = 1; pilar3 = 1; pilar4 = 1
                ::com == END -> break
                fi
        }
        od

}

active proctype Commander(){

	atomic{
	do
	:: pilar0 == 1 && pilar1 ==1 && pilar2 ==1 && pilar3 ==1 && pilar4 ==1 -> printf("Gates Open");
		ctl0 ! END;ctl1 ! END;ctl2 ! END;ctl3 ! END;ctl4 ! END
	:: 
		if
		:: ctl0 ! COMMAND;
		:: ctl1 ! COMMAND;
		:: ctl2 ! COMMAND;
		:: ctl3 ! COMMAND;
		:: ctl4 ! COMMAND;
		fi
	od
	}

}
