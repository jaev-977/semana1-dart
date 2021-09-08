import 'dart:math';

//Crear una lista de edades de 6 elementos, en la cual se recolectaran edades de personas como
void main() {
  var suma = 0;
  List<int> listaedades = new List.generate(6, (i) => Random().nextInt(100));
  print(listaedades);
  listaedades.sort();
  print('mayor es:${listaedades.last}');
  print('menor es:${listaedades.first}');

  for (int i = 0; i < listaedades.length; i++) {
    suma = suma + listaedades[i];
  }
  var promedio = suma / listaedades.length;

  print(promedio);
}
