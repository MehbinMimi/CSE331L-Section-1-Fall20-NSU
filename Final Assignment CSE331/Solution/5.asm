.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 'Enter a number(0-9): $'
S1 DB 0DH,0AH, 'The number is odd$'
S2 DB 0dh,0ah,'The number is even$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
INPUT:
    MOV AH,1
    INT 21H
    
EVEN_ODD_CHECK:
    
    TEST AL,01H
    JZ EVEN

ODD:
   LEA DX,S1
   MOV AH,9
   INT 21H
   JMP EXIT
   
EVEN: 

   LEA DX,S2
   MOV AH,9
   INT 21H
   
EXIT:
   MOV AH,4CH
   INT 21H
   
MAIN ENDP
END MAIN




