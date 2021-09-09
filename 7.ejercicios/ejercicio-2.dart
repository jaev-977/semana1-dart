import 'dart:math';

void main() {
  //llenar listas aleatoriamente de ejemplo
//lista 1:
  List<int> lista1 = new List.generate(6, (i) => Random().nextInt(20));
//lista 2:
  List<int> lista2 = new List.generate(9, (i) => Random().nextInt(20));
//ordenar las listas
  lista1.sort;
  lista2.sort;
  var com = 0;
  var listaSet = [];

  //unir las listas solo los numeros comunes

  for (var i = 0; i < lista1.length; i++) {
    if (lista2.indexOf(lista1[i]) == -1) {
      com = com + 1;
    } else {
      if (listaSet.indexOf(lista1[i]) == -1) {
        listaSet.add(lista1[i]);
      }
    }
  }

  print('lista 1 = $lista1');
  print('lista 2 = $lista2 ');
  print('Numeros iguales en las dos listas = $listaSet');
}
