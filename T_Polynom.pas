PROGRAM T_Polynom;

FUNCTION T_Rec(n: INTEGER; x: REAL): REAL;
BEGIN
    IF n = 0 THEN
        T_Rec := 1
    ELSE IF n = 1 THEN
        T_Rec := x
    ELSE
        T_Rec := 2 * x * T_Rec(n - 1,x) - T_Rec(n - 2,x)
END;


FUNCTION T_Iter(n: INTEGER; x: REAL): REAL;
VAR
    i: INTEGER;
    result, temp1, temp2: REAL;
BEGIN
    result := 0;
    temp1 := x;
    temp2 := 1;
    IF n = 0 THEN
        T_Iter := 1
    ELSE IF n = 1 THEN
        T_Iter := x
    ELSE BEGIN
        FOR i := 2 TO n DO BEGIN
            result := 2 * x * temp1 - temp2;
            temp2 := temp1;
            temp1 := result;
        END;
        T_Iter := result;
    END;
END;


BEGIN
    WriteLn(T_Rec(0,2):6:2);
    WriteLn(T_Rec(1,2):6:2);
    WriteLn(T_Rec(2,2):6:2);
    WriteLn(T_Rec(3,2):6:2);
    WriteLn(T_Rec(4,2):6:2);
    WriteLn(T_Rec(5,2):6:2);
    WriteLn(T_Rec(6,2):6:2);
    WriteLn(T_Rec(7,2):6:2);
    WriteLn(T_Rec(8,2):6:2);
    WriteLn(T_Rec(9,2):6:2);
    WriteLn(T_Rec(10,2):6:2);

    WriteLn();

    WriteLn(T_Iter(0,2):6:2);
    WriteLn(T_Iter(1,2):6:2);
    WriteLn(T_Iter(2,2):6:2);
    WriteLn(T_Iter(3,2):6:2);
    WriteLn(T_Iter(4,2):6:2);
    WriteLn(T_Iter(5,2):6:2);
    WriteLn(T_Iter(6,2):6:2);
    WriteLn(T_Iter(7,2):6:2);
    WriteLn(T_Iter(8,2):6:2);
    WriteLn(T_Iter(9,2):6:2);
    WriteLn(T_Iter(10,2):6:2);
END.