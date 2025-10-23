import 'dart:io';

void main() {
    File file = File('hello.txt');
    file.writeAsStringSync('Mahim\n');
    print('Name written to hello.txt');
}