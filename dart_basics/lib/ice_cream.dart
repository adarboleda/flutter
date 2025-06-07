class Icecream {
  String flavor = 'Desconocido';
  bool sugarFree = false;
  double price = 4.99;
  String size = 'Medium';

  void charge() {
    print(
      'El precio de un helado de $flavor y de tamaño $size es de $price \$',
    );
  }
}
