       IDENTIFICATION DIVISION.
       
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       AUTHOR. PEDRO DE OLIVEIRA HARO.
       DATE-WRITTEN. CURRENT-DATE.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. YOUR-MACHINE-TYPE.
       OBJECT-COMPUTER. YOUR-MACHINE-TYPE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-VARIABLES.
          05 WS-VAR1 PIC
              X(10).                                                    
          05 WS-VAR2 PIC 9(5).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
          DISPLAY 'Hello, world!'.
          MOVE 'COBOL' TO WS-VAR1.
          MOVE 12345 TO WS-VAR2.
          DISPLAY 'WS-VAR1: ' WS-VAR1.
          DISPLAY 'WS-VAR2: ' WS-VAR2.
          STOP RUN.

