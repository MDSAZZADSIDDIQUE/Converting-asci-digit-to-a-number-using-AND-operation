;Convert asci digit to a number using AND operation

.MODEL SMALL
.STACK 100H

.DATA
OUTPUT_MESSAGE db "ASCII CODE: $"

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, 57
    AND AL, 0Fh
    SUB AL, 208
    

    MOV AH, 2
    MOV DL, AL
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN