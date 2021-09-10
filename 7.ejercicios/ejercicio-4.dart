void main() {
  //Lista inicial
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  //Lista que recibe los numeros pares
  var listaSet = [];
  for (var i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      listaSet.add(a[i]);
    }
  }
  print(listaSet);
}
