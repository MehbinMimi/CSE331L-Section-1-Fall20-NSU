
.MODEL SMALL
.STACK 100H

.DATA 
A DB  6 DUP(1,2,3)

B DB 6 DUP
   
   .CODE
   MAIN PROC
   MOV AL,offset A
   MOV B[0],[AL] 
   
  
   MOV B[1],[AL+1]
   
   MOV B[2],[AL+2]
   
   MOV B[3],[AL+3]
   
   MOV B[4],[AL+4]
   
   MOV B[5],[AL+5]
   
   MOV AH,2
   INT 21H 
   
   MOV AH,4CH
   INT 21H
   
   MAIN ENDP
  END MAIN