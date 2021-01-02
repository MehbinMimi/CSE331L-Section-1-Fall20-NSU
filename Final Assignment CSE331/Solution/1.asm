.MODEL SMALL
.STACK 100H

.DATA

S_1 DB 'Enter a lower-case alphabet(a-z): $'
S_2 DB 0DH,0AH, 'The upper-case form: $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,S_1    ;print S_1
    MOV AH,9
    INT 21H
    
    MOV AH,1      ;reads a character
    INT 21H  
    
    MOV BL,AL     ;saving value of AL in BL
    SUB BL,20H    ;subtracting value stored in BL because ascii value of
                  ;lower-case letter 20 more than upper-case letter
    
    LEA DX,S_2    ;prints S_2
    MOV AH,9
    INT 21H  
        
    
    MOV DL,BL     ;moving value in AL to DL to display the character 
    
    MOV AH,2      ;prints the character
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    






