class Laptop {
  int? id;
  String? name;
  int? ram;

  Laptop(int id, String name, int ram) {
    this.id = id;
    this.name = name;
    this.ram = ram;
  }

  void display() {
    print('ID: $id, Name: $name, RAM: ${ram}GB');
  }
}

void main() {
  var laptop1 = Laptop(1, 'Dell', 8);
  var laptop2 = Laptop(2, 'HP', 16);
  var laptop3 = Laptop(3, 'Lenovo', 32);

  laptop1.display();
  laptop2.display();
  laptop3.display();
}
