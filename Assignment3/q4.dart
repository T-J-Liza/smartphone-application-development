import 'dart:math';

String generatePassword(int length) {
  String chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()';
  return List.generate(length, (index) => chars[Random().nextInt(chars.length)]).join();
}

void main() {
  print(generatePassword(12));
}