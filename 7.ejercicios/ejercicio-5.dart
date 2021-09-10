class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre, this.apellido, this.edad);
}

class Artista extends Persona with Dibujar {
  String Ingenioso;
  String habilidad;
  String Autenticidad;

  Artista(String nombre, String apellido, int edad, this.Autenticidad,
      this.Ingenioso, this.habilidad)
      : super(nombre, apellido, edad);
}

class Ingeniero extends Persona with Dibujar, Leer {
  String Didicacion;
  String Experiencia;
  String Compromiso;

  Ingeniero(String nombre, String apellido, int edad, this.Didicacion,
      this.Experiencia, this.Compromiso)
      : super(nombre, apellido, edad);
}

class Doctor extends Persona with Leer, Ejercitarse {
  String Preciso;
  String NivelFisico;
  String Salud;

  Doctor(String nombre, String apellido, int edad, this.Preciso,
      this.NivelFisico, this.Salud)
      : super(nombre, apellido, edad);
}

abstract class Atleta extends Persona {
  Atleta(String nombre, String apellido, int edad)
      : super(nombre, apellido, edad);
}

class Boxeador extends Atleta with Ejercitarse, Boxear {
  String ActividadFisica;
  String Categoria;
  String Altura;

  Boxeador(String nombre, String apellido, int edad, this.ActividadFisica,
      this.Categoria, this.Altura)
      : super(nombre, apellido, edad);
}

mixin Dibujar {
  String? representa;
  String? profesion;

  dibujo() {
    return ('EL $profesion Dibuja $representa inspirado ');
  }
}

mixin Leer {
  String? lectura;
  String? profesion;
  leer() {
    return ('EL $profesion le gusta Leer Pensando en $lectura');
  }
}

mixin Ejercitarse {
  String? ejercicio;
  String? profesion;
  ejercitar() {
    return ('EL $profesion Ejercita tren superior $ejercicio');
  }
}

mixin Boxear {
  String? boxea;
  String? profesion;
  boxeo() {
    return ('EL $profesion golpea como loco por $boxea en el ring');
  }
}

void main() {
  var artista = Artista('John', 'Esteban', 29, "100%", "Experto", "unica");
  artista.profesion = ("Artista");
  artista.representa = "Pintura";

  var ingeniero =
      Ingeniero('John', 'Esteban', 29, "Todo el Tiempo", "FullStack", "Alto");
  ingeniero.profesion = "Ingeniero";
  ingeniero.representa = "Diagrama";
  ingeniero.lectura = "Libros de Dart";
  var doctor = Doctor('John', 'Esteban', 29, "Muy Preciso", "Alto", "Optima");
  doctor.profesion = "Doctor";
  doctor.lectura = "Su profesión";
  doctor.ejercicio = "3 horas";
  var atleta = Boxeador('John', 'Esteban', 29, "100%", "Experto", "unica");
  atleta.profesion = "Boxeador";
  atleta.ejercicio = "7 horas";
  atleta.boxea = "Dando golpes bajos";

  print(artista);
  print(artista.dibujo());
  print(ingeniero.dibujo());
  print(ingeniero.leer());
  print(doctor.ejercitar());
  print(doctor.leer());
  print(atleta.boxeo());
  print(atleta.ejercitar());
}
