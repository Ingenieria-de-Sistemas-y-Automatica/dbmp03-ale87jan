;int contar_valor_en_array(int valor,int *array, unsigned int longitud, int *resultado)
global contar_valor_en_array
section .text

%define valor     edi
%define array     rsi
%define longitud  edx
%define resultado rcx

contar_valor_en_array:    
                          test  array, array
                          jz    error
                          test  resultado, resultado
                          mov   LONG[resultado], 0
                          jz    error

loop:                     cmp   valor, [array]
                          jne   end_loop
                          inc   LONG[resultado]
end_loop:                 add   array, 4
                          dec   longitud
                          jnz   loop

                          mov   eax, 1
                          ret

error:                    xor   eax, eax
                          ret
