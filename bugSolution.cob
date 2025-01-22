01  WS-AREA.          
05  WS-DATE      PIC 9(8). 
05  WS-TIME      PIC 9(6). 
05  WS-DATE-COMP  COMP-3. 

PROCEDURE DIVISION. 

    DISPLAY "Enter date (YYYYMMDD):" 
    ACCEPT WS-DATE 

    DISPLAY "Enter time (HHMMSS):" 
    ACCEPT WS-TIME 

    MOVE WS-DATE TO WS-DATE-COMP 
    
    IF WS-DATE-COMP > 20231231 THEN 
        DISPLAY "Invalid date!" 
    ELSE 
        DISPLAY "Valid date and time." 
    END-IF. 
    STOP RUN.