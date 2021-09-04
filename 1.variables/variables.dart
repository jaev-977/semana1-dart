void main() {
  var nombre = "Juan";
  String nombre_dos = "Juan";
  var edad = 89;
  int edad_dos = 28;
  var test;
  test = 100;

  //null safety
  int? variableNull = null;
  String? variableStringNull = null;

  //final - constante
  final String variableFinalTest = "Hola";
  const String variableConstanteTest = "Hola";

  print(nombre_dos.toUpperCase());
  print(nombre.toUpperCase());
  print(test);
  print(edad);
  print(edad_dos);
  print(variableFinalTest);
  print(variableConstanteTest);
  print(variableNull);
  print(variableStringNull);
}
