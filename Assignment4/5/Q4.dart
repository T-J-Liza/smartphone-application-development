import 'dart:io';

void main() {
    File original = File('hello.txt');
    File copy = File('hello_copy.txt');
    copy.writeAsStringSync(original.readAsStringSync());
    print('Copied to hello_copy.txt');
}