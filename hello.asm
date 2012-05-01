.MODEL TINY,STDCALL
.STACK 64
.DATA
    DB "Hello world!",'$'

.CODE
    MAIN PROC FAR
        MOV AX,_DATA
        MOV DS,AX

        MOV DX,00h
        MOV AH,09h
        INT 21h

        MOV AX,4C00h
        INT 21h
    MAIN ENDP
END MAIN
