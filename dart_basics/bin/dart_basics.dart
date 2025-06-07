import 'dart:io';
import 'dart:vmservice_io';
import 'package:dart_basics/dart_basics.dart' as dart_basics;
import 'package:dart_basics/ice_cream.dart';

void main(List<String> arguments) {
  var chocolate = Icecream();
  chocolate.flavor = "Chocolate";
  var test = Icecream();
  test.charge();
  chocolate.charge();
}

/*
+------------------------------------+
| VARIABLES Y CONDICIONALES
+------------------------------------+
*/

void greetings(name) {
  var age = 31;
  var example = 3.15;

  print('Hola $name');
}

void numbersExample() {
  //Variables numericas
  int age = 31;
  double age2 = 31.5;
  num age3 = 12;
  num age4 = 12.1;
}

void stringExamples() {
  //Variables de cadena de texto
  String name = 'Abner Arboleda';
  String currentName = "22 años";
  String fullText = 'Soy $name y tengo $currentName';
  print(fullText);
}

void dynamicExamples() {
  //Tipo dinamico
  dynamic example = 'Hola soy un ejemplo';
  print(example);
  example = 23;
  print(example);
}

void booleanExamples() {
  //Variables booleanas
  bool isHappy = true;
}

void constExamples() {
  //Tipos fijos
  final String example2 = 'Abner'; //En tiempo de ejecucion
  const String example3 = 'Hola'; //En tiempo de compilacion
}

void conversionExamples() {
  //Conversiones
  String toNumber = '31';
  int numberOK = int.parse(toNumber);
  print('El numero es $numberOK');

  int numberToString = 615;
  String stringOk = numberToString.toString();

  String toDouble = '34.25';
  double doubleOk = double.parse(toDouble);
}

void mathematicOperations() {
  //Operaciones matematicas
  int a = 1;
  int b = 4;

  // int result = a + b;
  // int result = a - b;
  // int result = a * b;
  // double result = a / b; //Con decimales
  // int result = a ~/ b; //Sin decimales
  // int result = a % b; //modulo

  a += b;
  a -= b;
  a *= b;

  a++;
  a--;

  print('El resultado es ${a++}');
}

void conditionalsStructures() {
  print('Ingresa tu edad: ');
  String userAge = stdin.readLineSync()!;
  int ageFormat = int.parse(userAge);

  (ageFormat >= 18) ? print("Eres mayor de edad") : print("Eres menor de edad");

  print('Introduce el dia de la semana: ');
  int numberOfTheWeek = int.parse(stdin.readLineSync()!);

  if (numberOfTheWeek == 1) {
    print('lunes');
  } else if (numberOfTheWeek == 2) {
    print('martes');
  } else if (numberOfTheWeek == 3) {
    print('miercoles');
  } else if (numberOfTheWeek == 4) {
    print('jueves');
  } else if (numberOfTheWeek == 5) {
    print('viernes');
  } else if (numberOfTheWeek == 6) {
    print('sabado');
  } else if (numberOfTheWeek == 7) {
    print('domingo');
  } else {
    print('no es un dia de la semana');
  }

  switch (numberOfTheWeek) {
    case 1:
      print("Lunes");
      break;
    case 2:
      print("Martes");
      break;
    case 3:
      print("Miercoles");
      break;
    case 4:
      print("Jueves");
      break;
    case 5:
      print("Viernes");
      break;
    case 6:
      print("Sabado");
      break;
    case 7:
      print("Domingo");
      break;
    default:
      print('Numero no valido');
      break;
  }
}

/*
+------------------------------------+
| MÉTODOS
+------------------------------------+
*/

void simpleFunction() {
  print('Esto es un ejemplo');
}

void inputFunction(int a, int b) {
  int result = a + b;
  print('El resultado es $result');
}

int outputFunction(int a, int b) {
  return a + b;
}

int outputFunction2(int a, int b) => a + b;

void optionalFunction({String name = "Desconocido", int age = -1}) {
  print('Eres $name y tienes $age');
}

void optionalFunction2(String name, [int age = -1]) {
  print('Eres $name y tienes $age');
}

/*
+------------------------------------+
| Listas
+------------------------------------+
*/

void listExamples() {
  List<String> names = ["Abner", "David", "Grace"];
  var names2 = ["Alberto", "Alba", "Andres"];
  // print(names[0]);
  // print(names.last);
  // print(names.first);
  // print(names.length);
  // names[2] = "Pepe";
  // names.insert(1, "Ramon");
  // names.add("Pikachu");
  // names.addAll(names2);
  // names.remove("Abner");
  // names.removeAt(1);
  // names.clear();
  print(names[names.length - 1]);
}

/*
+-------------------------------------+
| Sets -> no guardan valores duplicados 
y no tienen orden
+-------------------------------------+
*/

void setExamples() {
  Set<String> names = {"Aris", "Pepe"};
  Set<String> names2 = {"Aris", "Pepe"};
  names.add("Aris");
  names.add("Bimbo");
  names.remove("Aris");
  names.clear();
  names.removeAll(names2);
  names.length;
  bool result = names.contains("Aris");
  if (result) {
    print('Aris esta invitado');
  } else {
    print('Aris no esta invitado');
  }
  print(names);

  List<String> newNames = ["Aris", "Aris", "Juan"];
  Set<String> newNamesSet = Set.from(newNames);
  print(newNamesSet);
}

/*
+------------------------------------+
| Map -> Accede a los valores 
a travez de la clave
+------------------------------------+
*/

void mapExamples() {
  Map<String, int> people = {"Aris": 32, "Pepe": 64, "Mouredev": 120};
  people["Aris"] = 76;
  people.addAll({"David": 44});
  people["Pikachu"] = 76;
  people.remove("Pikachu");
  print(people.keys);

  people.containsKey("Aris");
  people.containsValue(32);

  people.length;
  people.clear();
  print(people.values);
}

/*
+------------------------------------+
| Bucles
+------------------------------------+
*/

void listLoop() {
  List<int> numbers = [1, 3, 5, 7, 8, 9];
  for (var i = 0; i < numbers.length; i++) {
    print('Con el for basico tenemos: ${numbers[i]}');
  }

  for (var element in numbers) {
    print('Con el for numero 2 tenemos $element');
  }

  numbers.forEach((item) {
    print('El numero es: $item');
  });

  numbers.forEach(print);
}

void setLoop() {
  Set<int> numbers = {1, 3, 5, 7, 8, 9};
  for (var element in numbers) {
    print("El set: $element");
  }

  numbers.forEach(print);
  numbers.forEach((item) {
    print('El numero es: $item');
  });
}

void mapLoop() {
  Map<String, int> numbers = {"favNumber": 13, "birthday": 5, "address": 4};
  for (var element in numbers.entries) {
    print('La clave es ${element.key} y  el valor es ${element.value}');
  }

  numbers.forEach((key, value) {
    print('La clave es $key y el valor es $value');
  });
}

void nulability() {
  String? name = 'Aris';
  name = "";
  name = null;
  //var example2 = name!; //convertirlo a un valor sin nulabilidad a la vez.Lo mejor es utilizar operadores.
  var example2 = name ?? "invalido";

  name ??= "Pepe";

  Icecream? test = Icecream();

  if (name != null) {
    print("Hola $name");
  }

  print('Hola $name');

  int? example = 13;
  example = null;
}

/*
+------------------------------------+
| EJERCICIOS
+------------------------------------+
*/

void exercise1() {
  /*
  Ejercicio 1: Calculadora de edad

  Objetivo
  Escribe un programa en Dart que pida al usuario su año de nacimiento y calcule su edad actual.

  Pasos a seguir:
  1.Pedir al usuario su año de nacimiento (leerlo como String)
  2.Convertir el año de nacimiento a un número entero.
  3.Cañcuñar la edad restando el año de nacimiento al año acrual (2025)
  4.Mostrar el resultado en un mensaje como: "Tienes X años"
  */
  print('Introduce tu año de nacimiento');
  String date = stdin.readLineSync()!;
  int currentYear = 2025;
  int dateInt = int.parse(date);
  currentYear -= dateInt;

  print('Tienes $currentYear');
}

void exercise2() {
  /*
  Ejercicio 2: Calculadora de propina

  Objetivo
  Escribe un programa en Dart que calcule cuánto debe pagar cada persona despues de dividir la cuenta y agregar una propina.

  Pasos a seguir:
  1.Pedir al usuario el total de la cuenta
  2.Pedir el porcentaje de propina a pagar.
  3.Calcular el total a pagar sumando la propina
  4.Pedir el número de personas para dividir la cuenta
  5.Calcular cuánto debe pagar cada persona
  6.Mostrar el resultado en pantalla

  */

  double totalPrice = 200;
  const tip = 10;
  int numberOfPeople = 3;
  double priceWithTip = totalPrice + (totalPrice * (tip / 100));
  String priceResult = (priceWithTip / numberOfPeople).toStringAsFixed(2);

  print(
    'El precio total con propina es de ${priceWithTip.toStringAsFixed(2)} Cada personas debe pagar $priceResult',
  );
}

void exercise3() {
  /*
  Ejercicio 3: Identifica numeros positivos y negativos

  Objetivo
  Escribe un programa en Dart que determine si un numero ingresado por el usuario es positivo, negativo o cero.

  */

  print('Introduce un numero: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 0) {
    print('El numero es positivo');
  } else if (numero < 0) {
    print('El numero es negativo');
  } else {
    print('El numero es 0');
  }
}

void exercise4() {
  /*
  Ejercicio 4: Meses del año

  Objetivo
  Escribe un programa en Dart que reciba un número entre 1 y 12 e imprima el nombre correspondiente del año

  */

  print('Sistema de meses del año');
  print('Ingresa un número del 1 al 12: ');
  int numberMonth = int.parse(stdin.readLineSync()!);

  switch (numberMonth) {
    case 1:
      print('Enero');
      break;
    case 2:
      print('Febrero');
      break;
    case 3:
      print('Marzo');
      break;
    case 4:
      print('Abril');
      break;
    case 5:
      print('Mayo');
      break;
    case 6:
      print('Junio');
      break;
    case 7:
      print('Julio');
      break;
    case 8:
      print('Agosto');
      break;
    case 9:
      print('Septiembre');
      break;
    case 10:
      print('Octubre');
      break;
    case 11:
      print('Noviembre');
      break;
    case 12:
      print('Diciembre');
      break;
    default:
      print('Número de valido');
      break;
  }
}

void excercise5() {
  /*
  Ejercicio 5: Suma de numeros pares en una lista

  Objetivo
  Escribe un programa en Dart que tome una lista de números enteros y calcule la suma de de todos los números pares en la lista.

  Ejemplo:
  Entrada: [1, 2, 3, 4, 5, 6]
  Salida: La suma de los número pares es: 12
  Tip: Si a un número le hacemos %2 == 0 es par;
  */

  var example = [2, 5, 6, 7, 8];
  int result = 0;

  for (int number in example) {
    if (number % 2 == 0) {
      result += number;
    }
  }
  // for (var i = 0; i < example.length; i++) {
  //   if (example[i] % 2 == 0) {
  //     result = result + example[i];
  //   }
  // }
  print('La suma de los numeros pares es: $result');
}

void excercise6() {
  /*
  Ejercicio 5: Filtra palabras unicas en un set

  Objetivo
  Escribe un programa en Dart que reciba una lista de palabras con algunas repetidas y almacene solo las palabras únicas en un set.
  Luego, muestre el conjunto resultante

  Ejemplo:
  Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil"]
  Salida: {dart, flutter, codigo, movil}
  */

  List<String> tecnologias = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];

  Set<String> tecnoSet = Set.from(tecnologias);

  print(tecnoSet);

  for (var tecnos in tecnoSet) {
    print(tecnos);
  }
}

void excercise7() {
  /*
  Ejercicio 5: Contar la frecuencia de las palabras en un map

  Objetivo
  Escribe un programa en Dart que reciba una lista de palabras y cuente cuántas veces aparece cada una, almacenando el resultado en un Map.

  Ejemplo:
  Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"]
  Salida: {dart: 3, flutter: 2, codigo: 1, movil: 1}
  */

  List<String> tecnologias = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
    "dart",
  ];

  Map<String, int> tecnoMap = {};

  for (var tecnos in tecnologias) {
    if (tecnoMap.containsKey(tecnos)) {
      tecnoMap[tecnos] = tecnoMap[tecnos]! + 1;
    } else {
      tecnoMap[tecnos] = 1;
    }
  }

  print(tecnoMap);
}
