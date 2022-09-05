// Juan David Castillo Ramirez
// 000452553 :)
// juan.castillor@upb.edu.co
(INICIO) 
                @KBD
                D=M
                @vector 
                M=1 
                @84
                D=D-A
                @VERTICAL
                D;JEQ
               
                @KBD
                D=M
                @vector
                M=0   
                @67
                D=D-A 
                @BORRAR
                D;JEQ
               
                @INICIO
                0;JMP
(VERTICAL)
                @16400 
                D=A
                @coordenada
                M=D 
               
                @256
                D=A
                @contador 
                M=D
               
                @32
                D=A 
                @salto
                M=D
                @RECTAV
                0;JMP
(BORRAR)
                @16384 
                D=A
                @coordenada 
                M=D 
                @8192 
                D=A
                @contador
                M=D
                @1
                D=A 
                @salto
                M=D
                @RECTAB
                0;JMP
(RECTAV)
                @coordenada 
                D=M
                @saltoscreen
                M=D 
(PINTARV)
                @contador
                D=M 
 
                @HORIZONTAL
                D;JEQ 
 
                @256
                D=A
               
                @saltoscreen
                A=M 
                M=D
               
                @contador 
                M=M-1
               
                @salto
                D=M
               
                @saltoscreen
                M=M+D 
               
                @PINTARV
                0;JMP
(HORIZONTAL)
                @20480
                D=A
                @coordenada
                M=D

                @32
                D=A
                @contador
                M=D

                @salto
                M=1
                @RECTH
                0;JMP
(RECTH)
                @coordenada 
                D=M
                @saltoscreen
                M=D 
(PINTARH)
                @contador 
                D=M 
 
                @FIN
                D;JEQ 

                @vector
                D=-1 
               
                @saltoscreen
                A=M 
                M=D 
               
                @contador 
                M=M-1
               
                @salto
                D=M
               
                @saltoscreen
                M=M+D 
               
                @PINTARH
                0;JMP
(RECTAB)
                @coordenada
                D=M
                @saltoscreen
                M=D 
(BORRADOR)
                @contador 
                D=M 
 
                @FIN
                D;JEQ 

                @vector
                D=M 
               
                @saltoscreen
                A=M 
                M=D 
               
                @contador 
                M=M-1
               
                @salto
                D=M
               
                @saltoscreen
                M=M+D 
               
                @BORRADOR
                0;JMP
(FIN)
                @INICIO
                0;JMP

