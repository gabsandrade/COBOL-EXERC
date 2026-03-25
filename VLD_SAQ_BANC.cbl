      ******************************************************************
      * Author: GABRIELLY ANDRADE
      * Date:  25/03/2026
      * Purpose: Practice logical fundamentals
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VLD-SAQ-BANC.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SALDO                PIC 9(6)V99.
       01 SAQUE                PIC 9(6)V99.
       01 TAXA                 PIC 9(3)V99.
       01 TOTAL                PIC 9(6)V99.
       01 SALDO-FINAL          PIC 9(6)V99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Saldo em conta: "
            ACCEPT SALDO.
            DISPLAY "Valor do saque: "
            ACCEPT SAQUE.

            IF SAQUE <= 0
                DISPLAY "Valor inválido, tente outro."
            ELSE
                COMPUTE TOTAL = SAQUE + TAXA

                IF SALDO >= TOTAL
                    COMPUTE SALDO-FINAL = SALDO - TOTAL
                    DISPLAY "Saque realizado com sucesso!"
                    DISPLAY "Saldo final: " SALDO-FINAL
                ELSE
                    DISPLAY "Saldo insuficiente."
                END-IF
            END-IF

            STOP RUN.
       END PROGRAM VLD-SAQ-BANC.
