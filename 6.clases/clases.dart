class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre, this.apellido, this.edad);

  Persona.completo(
      {this.nombre = "john", this.apellido = "esteban", this.edad = 29});
}

class Padre extends Persona {
  int hijos;

  Padre({required this.hijos}) : super.completo();
}

abstract class Vehiculo {
  String? placa;

  bool vehiculoEncendido();
}

class Taxi extends Vehiculo with Terrestre {
  bool vehiculoEncendido() => true;
}

class Lancha extends Vehiculo with Acuatico {
  bool vehiculoEncendido() => true;
}

mixin Terrestre {
  int? llantes;
  int? kilometraje;

  tipoDeVehiculo() {
    return "terestre";
  }
}

mixin Acuatico {
  int? motor;

  tipoDeVehiculo() {
    return "acuatico";
  }
}

class Empleado implements Persona {
  @override
  String apellido;

  @override
  int edad;

  @override
  String nombre;

  Empleado(this.nombre, this.apellido, this.edad);
}

void main() {
  var persona = Persona('John', 'Esteban', 29);
  var elPadre = Padre(hijos: 5);

  var vehiculoTaxi = Taxi();
  vehiculoTaxi.llantes = 4;

  var vehiculoLancha = Lancha();
  vehiculoLancha.motor = 2;

  print(persona);
  print(persona.nombre);
  print(elPadre.nombre);
  print(vehiculoTaxi.tipoDeVehiculo());
  print(vehiculoLancha.tipoDeVehiculo());
  print(vehiculoLancha.motor);
  print(vehiculoTaxi.llantes);
}
