abstract class Bottle {
  void open();

  factory Bottle() => CokeBottle();
}

class CokeBottle implements Bottle {
  void open() {
    print('Coke bottle is opened');
  }
}

void main() {
  Bottle myBottle = Bottle();
  myBottle.open();
}
