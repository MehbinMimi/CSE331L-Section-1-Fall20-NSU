.MODEL SMALL
.STACK 100H
.DATA 
A DB 'Enter first number: $'
B DB 0DH,0AH,'Enter second number: $'
S DB 0DH,0AH,'1$'
M DB 0DH,0AH,'0$'  


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H 
    
    MOV BL,AL
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    SUB BL,30H
    MOV AH,1
    INT 21H  
    
    
    SUB AL,30H
    
    
    MUL BL        ;multiplies value in AL with BL
    AAM 
    
    CMP AX,15     ;checks if the product is greater than 15
    JA G_15
    
    LEA DX,M
    MOV AH,9
    INT 21H
    JMP EXIT  
    
G_15:              ;prints 1 if product is greater than 15
    LEA DX,S
    MOV AH,9
    INT 21H
        
    
EXIT:
    MOV AH,4CH
    INT 21H 

MAIN ENDP 
END MAIN
          

      