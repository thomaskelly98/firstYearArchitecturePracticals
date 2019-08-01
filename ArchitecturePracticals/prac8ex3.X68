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
    MOVE.B #$30, D2
    MOVE.B #8, D3
    MOVE.B #0, D4
    
main  LSL.B #1, D4  
loop  MOVE.B #5, D0
      TRAP #15
      CMP.B #$31, D1
      BEQ one
      CMP.B #$30, D1
      BEQ zero
      BNE loop

zero  SUB.B #1, D3
      BEQ final 
      BRA main    

one   ADD.B #1, D4
      BRA zero

final LSL.B #1, D4
      BCS end
      ADD.B #1, D2
      BRA final

end   MOVE.B #$20, D1
      MOVE.B #6, D0
      TRAP #15
      MOVE.B D2, D1
      MOVE.B #6, D0
      TRAP #15
      MOVE.B #9, D0
      TRAP #15


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
