class Camera {
  int _id;
  String _brand;
  double _prize;
  String _color;

  Camera(this._id, this._brand, this._prize, this._color);

  int get id => this._id;
  String get brand => this._brand;
  double get prize => this._prize;
  String get color => this._color;

  set brand(String value) => this._brand = value;
  set prize(double value) => this._prize = value;
  set color(String value) => this._color = value;

  void display() {
    print('ID: $_id, Brand: $_brand, Prize: \$$_prize, Color: $_color');
  }
}

void main() {
  var cam1 = Camera(1, 'Canon', 1200, 'Black');
  var cam2 = Camera(2, 'Nikon', 1500, 'Red');
  var cam3 = Camera(3, 'Sony', 1800, 'Silver');

  cam1.display();
  cam2.display();
  cam3.display();
}
