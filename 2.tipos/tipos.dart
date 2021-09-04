void main() {
  int edadint = 23;
  double puntosDouble = 10.2;
  var edadVar = 48;

  num edadNum = edadint;
  num puntosNum = puntosDouble;

  print(edadNum);
  print(puntosNum);
  print(edadVar);

  //*String
  var texto1 = 'valor con comilla simple';
  var texto2 = "valor con comilla doble";
  var texto3 = "It's ease to escape the string delimiter";
  var texto4 = 'It\'s ease to escape the string delimiter';

  //interpolar
  var texto5 = "el resultado de sumar 3+4 es ${9 + 9}";
  var texto8 = "texto a interpolar";
  var variableTipoNumero = 40;
  var texto9 =
      "Vamos a interpolar texto2 \'$texto2'\ .el valor de la variableTipoNumero es $variableTipoNumero";
  var texto10 = ''' CREATE TABLE Persons(
                  PersomnID int,
                  LastName varchar(250),
                  FirstName varchar(250),
                );''';
  var texto11 = r'mostrar este caracter \';
  //Concatenar
  var texto6 = "este valor se un con el siguiente valor" + ", yo me uno";
  var texto7 = "me uno con" ", este otro valor";

  print(texto1);
  print(texto2);
  print(texto3);
  print(texto4);
  print(texto5);
  print(texto6);
  print(texto7);
  print(texto8);
  print(texto9);
  print(texto10);
  print(texto11);

  //boleanos

  var texto12 = '';
  if (texto12.isEmpty) {
    print("texto12 es vacio");
  }

  var variableBoleNUll = null;
  if (variableBoleNUll == null) {
    print("esta variable es null");
  }

  //listas
  var lista1 = ['mazda', 'kia', 'renult'];
  List<String> lista2 = ['mazda', 'kia', 'renult'];
  var lista3 = ["chevrolet", ...lista1];
  lista3.add("jaguar");
  var lista4;
  List<String>? lista6 = null;
  //spread
  var lista5 = [...lista3, ...?lista6, ...?lista4];

  var listaSet = {'mazda', 'kia', 'renult', 'renult'};
  listaSet.add("mazdados");
  listaSet.add("kia");
  listaSet.clear();

  var lista7 = [1, 2.0, "hola", true];
  List<dynamic> lista8 = [1, 2.0, "hola", true];

  var maps1 = {'red': 'rojo', 'blue': 'azul'};
  //maps1.clear();
  maps1['green'] = 'verde';

  print(lista1);
  print(lista2);
  print(lista2.last); //ultimo
  print(lista2.reversed); //reserved
  print(lista3);
  print(lista5);
  print(listaSet);
  print(lista7);
  print(lista8);
  print(maps1);
  print(maps1.length);
  maps1.forEach((key, value) {
    print(key);
    print(value);
  });
  maps1.forEach((key, value) => print(key));
}
