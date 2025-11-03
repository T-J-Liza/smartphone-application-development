class House {
  int? id;
  String? name;
  double? prize;

  House(int id, String name, double prize) {
    this.id = id;
    this.name = name;
    this.prize = prize;
  }

  void display() {
    print('ID: $id, Name: $name, Prize: \$${prize}');
  }
}

void main() {
  var houses = [
    House(1, 'Villa', 500000),
    House(2, 'Apartment', 300000),
    House(3, 'Cottage', 200000),
  ];

  for (var house in houses) {
    house.display();
  }
}
