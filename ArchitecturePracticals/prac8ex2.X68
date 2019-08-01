*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B #0, D1
    MOVE.B #0, D2
    MOVE.B #8, D3
    
loop  LSL.B #1, D2
input MOVE.B #5, D0
      TRAP #15
      CMP.B #$31, D1
      BEQ one
      CMP.B #$30, D1
      BEQ zero
      BNE input     
   
zero  SUB.B #1, D3        
      BNE loop
      MOVE.B #9, D0
      TRAP #15
      
one   ADD.B #1, D2
      BRA zero

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
