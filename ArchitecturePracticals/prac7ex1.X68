*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
      MOVE.B, #$8D, $2000
      MOVE.B, #$9A, $2001
      MOVE.B, $2000, D1
      MOVE.B, $2001, D2
      CMP.B, D1, D2
      BHI alpha
      MOVE.B D1, $2002
      MOVE.B #9, D0
      TRAP #15
   
alpha MOVE.B D2, $2002   
      MOVE.B #9, D0
      TRAP #15 
 

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
