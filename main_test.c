#include <stdio.h>

int contar_valor_en_array(int valor,int *array, unsigned int longitud, int *resultado);

int main(int argc, char *argv[]) {
  int array[10] = {1, 2, 3, 3, 3, 4, 5, 6, 7, 3};
  int valor = 3;
  int ret;
  int cuenta;
  ret = contar_valor_en_array(valor, array, 10, &cuenta);
  if (ret != 0)
    printf("%u\n", cuenta);
  else{
    printf("Error\n");
    return 1;
  }
  return 0;
  }
