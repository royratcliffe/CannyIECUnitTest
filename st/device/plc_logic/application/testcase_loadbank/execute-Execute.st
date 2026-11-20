(* --- Interface --- *)
METHOD PROTECTED Execute : BOOL
VAR_OUTPUT
	iErrorCode : INT;
END_VAR
VAR
	xAssert  : BOOL;
	loadBank : CANNY.LongLoadBank;
END_VAR

(* --- Implementation --- *)
xAssert := loadBank.LoadExclusivelyForBank(100, 16#00010000);
xAssert := TM.Assert_DWord_Equal(THIS^, 16#00000000, loadBank.Energising, "");
xAssert := loadBank.Energise(100);
xAssert := TM.Assert_DWord_Equal(THIS^, 16#00010000, loadBank.Energising, "");
loadBank(EN := TRUE);
Execute := TRUE;
