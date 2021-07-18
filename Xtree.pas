PROGRAM Xtree;

FUNCTION XtreeRec(n: INTEGER): INTEGER;
BEGIN
    IF n = 1 THEN
        XtreeRec := 0
    ELSE
        XtreeRec := ((2 * n) - 3) + XtreeRec(n - 2)
END;

BEGIN
    WriteLn(XtreeRec(1));
    WriteLn(XtreeRec(3));
    WriteLn(XtreeRec(5));
    WriteLn(XtreeRec(7));
    WriteLn(XtreeRec(9));
    WriteLn(XtreeRec(11));
    WriteLn(XtreeRec(13));
END.