String obtenerNombre(String valor) {
  return 'valor funcion $valor';
}

String obtenernombrefuncionflecha(String valor) => 'valor funcion $valor';

obtenerNombreSinretorno({String valor = 'pablo'}) {
  return 'valor funcion $valor';
}

String obtenerFuncionNOmeParamerter(
    {String? valor, String valor2 = 'pablo', required valor3}) {
  return 'valor funcion $valor otro valor $valor2';
}

funcionConParametrosOpcionales(String valor1, [int? valor2]) {
  return valor1;
}

funcionTest(String valor1, String valor2, String valor3, String valor4) {}

void main() {
  var miFuncionaAnonima = (String valor) {
    return valor;
  };

  print(obtenerNombre("german"));
  print(obtenernombrefuncionflecha("german"));
  print(obtenerFuncionNOmeParamerter(
      valor2: "John", valor: "Heidy", valor3: "hola"));
  print(funcionConParametrosOpcionales("Carlo", 3));
  print(miFuncionaAnonima("hola"));
}
