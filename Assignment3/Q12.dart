double calculateArea([double length = 1, double width = 1]) {
  return length * width;
}

void main() {
  print(calculateArea(5,3));
  print(calculateArea());
}