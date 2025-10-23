import 'dart:io';

void main() {
    File file = File('hello.txt');
    List<String> friends = ['Anika', 'Rahim', 'Sara'];
    for (var friend in friends) {
        file.writeAsStringSync('$friend\n', mode: FileMode.append);
    }
    print('Friends appended to hello.txt');
}