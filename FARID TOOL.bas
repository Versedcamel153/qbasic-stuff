CLS
PRINT "Welcome!"
PRINT "[1] Dictionary "
PRINT "[2] Calculator "
PRINT "[3] Data Recorder"
INPUT "Choose a task: ", a$
CLS
SELECT CASE a$
    CASE "1": PRINT "Dictionary":
    CASE "2":
        PRINT "[1] Addition "
        PRINT "[2] Subtraction "
        PRINT "[3] Multiplication "
        PRINT "[4] Division "
        INPUT "Choose operator: ", operator$
        SELECT CASE operator$
            CASE "1": PRINT Add(f, s):
            CASE "2": PRINT Subtract(f, s):
            CASE "3": PRINT Multiply(f, s):
            CASE "4": PRINT Divide(f, s):
        END SELECT
    CASE "3":
        PRINT "[1] Blank file"
        PRINT "[2] Student Record"
        INPUT "Choose Record type: ", record$
        CLS
        SELECT CASE record$
            CASE "1":
                INPUT "Enter the name of the file to create: ", filename$
                INPUT "Enter file extension(without the period): ", extension$

                CLS
                OPEN filename$ + "." + extension$ FOR OUTPUT AS #1

                INPUT "Enter content of the file: ", blnk$

                WRITE #1, blnk$
                CLOSE #1


            CASE "2":
                INPUT "Enter the name of the file to create: ", filename$
                INPUT "Enter file extension: ", extension$
                INPUT " Number of headings: ", n%

                CLS
                OPEN filename$ + "." + extension$ FOR OUTPUT AS #1

                FOR i = 1 TO n%
                    y$ = "Enter " + STR$(i) + " head: "
                    PRINT y$
                    INPUT y$
                    INPUT "enter data"; d$
                    PRINT #1, y$,
                    PRINT 1, d&
                NEXT i
                CLS

                CLOSE #1
        END SELECT
END SELECT
FUNCTION Add (f, s)
    CLS
    INPUT "Enter first number", f
    INPUT "Enter second number", s
    a = f + s
    PRINT "Sum = "; a
END FUNCTION


FUNCTION Multiply (f, s)
    CLS
    INPUT "Enter first number", f
    INPUT "Enter second number", s
    p = f * s
    PRINT "Product = "; p
END FUNCTION

FUNCTION Subtract (f, s)
    CLS
    INPUT "Enter first number", f
    INPUT "Enter second number", s
    d = f - s
    PRINT d
END FUNCTION

FUNCTION Divide (f, s)
    CLS
    INPUT "Enter first number", f
    INPUT "Enter second number", s
    r = f / s
    PRINT "Difference = "; r
END FUNCTION


