.MODEL SMALL
.STACK 100H
.DATA 
MSG1 DB 'INVALID'
MSG2 DB 0AH,0DH,'Enter a HEX digit (0-9 & A-F): $' 
MSG3 DB 0AH,0DH,'In decimal it is : '

.CODE
MAIN PROC 
    MOV AX,@DATA 
    MOV DS,AX
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,30H
    JL INVALID
    
    CMP BL,46H
    JG  INVALID
    
    CMP BL,39H
    JLE DIGIT
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    SUB BL,11H
    
    MOV AH,2
    MOV DL,31H
    INT 21H
    MOV DL,BL
    INT 21H
    
    DIGIT:
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    INVALID:
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,4CH
    INT 21H 
    MAIN ENDP
END MAIN
    
    
    
    
    





