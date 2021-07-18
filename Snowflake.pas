PROGRAM Snowflake;

FUNCTION NrOfLinesRec(n: INTEGER): LONGINT;
BEGIN
    IF n = 1 THEN
        NrOfLinesRec := 2
    ELSE
        NrOfLinesRec := 2 + NrOfLinesRec(n - 1) * 4
END;


FUNCTION NrOfLinesIter(n: INTEGER): INTEGER;
VAR
    i, result: INTEGER;
BEGIN
    result := 0;
    FOR i := 1 TO n DO BEGIN
        result := 2 + result * 4;
    END;
    NrOfLinesIter := result;
END;


BEGIN
    WriteLN(NrOfLinesRec(1));
    WriteLN(NrOfLinesRec(2));
    WriteLN(NrOfLinesRec(3));
    WriteLN(NrOfLinesRec(4));
    WriteLN(NrOfLinesRec(5));
    WriteLN(NrOfLinesRec(6));
    WriteLN(NrOfLinesRec(7));

    WriteLN();

    WriteLN(NrOfLinesIter(1));
    WriteLN(NrOfLinesIter(2));
    WriteLN(NrOfLinesIter(3));
    WriteLN(NrOfLinesIter(4));
    WriteLN(NrOfLinesIter(5));
    WriteLN(NrOfLinesIter(6));
    WriteLN(NrOfLinesIter(7));
END.
