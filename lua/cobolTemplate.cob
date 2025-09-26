      *>> simple identification stuff
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BURNING_SHIP.
       AUTHOR. PEDRO HARO.
       REMARKS. This program is meant to render a fractal on the window,
           using exposed SDL2 functions.
      *>> declaring my environment
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. Min_Linux_x64.
       OBJECT-COMPUTER.  Min_Linux_x64.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       I-O-CONTROL.
      *>> place where I declare my variables
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
           DISPLAY "HELLO WORLD FROM COBOL"
           STOP RUN.
      
