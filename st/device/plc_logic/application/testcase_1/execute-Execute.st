(* --- Interface --- *)
METHOD PROTECTED Execute : BOOL
VAR_OUTPUT
	iErrorCode : INT;
END_VAR
VAR
	xAssert : BOOL;
END_VAR

(* --- Implementation --- *)
xAssert := TM.Assert_Bool_IsFalse(context := THIS^, actualValue := CANNY.ISIGNBIT(0), wsErrorMsg := "");
xAssert := TM.Assert_Bool_IsTrue(context := THIS^, actualValue := CANNY.ISIGNBIT(-1), wsErrorMsg := "");
xAssert := TM.Assert_Bool_IsFalse(context := THIS^, actualValue := CANNY.ISIGNBIT(1), wsErrorMsg := "");
Execute := TRUE;
