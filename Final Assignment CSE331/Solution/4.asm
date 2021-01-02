.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA   ;initialize DS
    MOV DS,AX
    
    MOV AL,16      ;moving a value in AL to divide by 4  
    
    MOV CL,2
    SHR AL,CL      ;AL divided by 4
    
    MOV BL,AL      ;storing value of AL in BL
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
