import 'dart:io';

void main() {
    File file = File('students.csv');

  
    file.writeAsStringSync('Name,Age,Address\n');
    file.writeAsStringSync('Mahim,22,Sylhet\n', mode: FileMode.append);
    file.writeAsStringSync('Anika,21,Dhaka\n', mode: FileMode.append);

 
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
        print(line);
    }
}