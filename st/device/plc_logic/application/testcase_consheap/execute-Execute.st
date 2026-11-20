(* --- Interface --- *)
METHOD PROTECTED Execute : BOOL
VAR_OUTPUT
	iErrorCode : INT;
END_VAR
VAR
	xAssert  : BOOL;
	consHeap : CANNY.ConsHeap;
	head     : CANNY.CONS_REG;
END_VAR

(* --- Implementation --- *)
head    := consHeap.collect();
xAssert := TM.Assert_USint_Equal(THIS^, 1, head, "");
Execute := TRUE;
