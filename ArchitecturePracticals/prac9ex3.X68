*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
      MOVE.L #$27043A1F, $2000
      MOVE.W #$C385, $2004
      LEA $2000, A0
      LEA $2006, A1
      MOVE.B #3, D0
      
loop  MOVE.B (A0),D1
      MOVE.B -(A1),(A0)+
      MOVE.B D1,(A1)   
      SUB.B #1, D0
      BNE loop   

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
