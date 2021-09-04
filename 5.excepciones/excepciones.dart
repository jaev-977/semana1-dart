String obtenerNombre({required String valor}) {
  if (valor == 'juan') {
    throw FormatException("El nombre de $valor no puede ser procesado");
  }
  if (valor == 'pedro') {
    throw FormatException("El nombre de $valor no puede ser procesado");
  }
  return valor;
}

void main() {
  try {
    String resultado = obtenerNombre(valor: "pedro");
    print(resultado);
  } on FormatException catch (e) {
    print("formatException");
    print(e);
  } catch (e) {
    print(e);
  }
}
