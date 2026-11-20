(* --- Interface --- *)
{attribute 'test'}
{attribute 'testcasetimeout':='15000'}
FUNCTION_BLOCK TestCase EXTENDS TM.Testcase
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR
END_VAR

(* --- Implementation --- *)
SUPER^();
