import 'dart:io';

void main() {
  print('Ingrese Palabras o Numeros');
  // Ingrese palabras o numeros
  String? cadena = stdin.readLineSync();
  var listacadena = cadena!.split('');

  if (listacadena.length > 0) {
    String? invertida = cadena.split('').reversed.join('');

    if (cadena == invertida) {
      print('$cadena es Palindromo');
    } else {
      print('$cadena no es Palindromo');
    }
  } else {
    print('ingrese datos por favor');
  }
}
