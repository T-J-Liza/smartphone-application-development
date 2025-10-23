import 'dart:io';

void main() {
    List<String> tasks = [];
    while (true) {
        print('\n1. Add Task\n2. Remove Task\n3. View Tasks\n4. Exit');
        String choice = stdin.readLineSync()!;
        if (choice == '1') {
            print('Enter task to add:');
            tasks.add(stdin.readLineSync()!);
        }
        else if (choice == '2') {
            print('Enter task to remove:');
            tasks.remove(stdin.readLineSync());
        } 
        else if (choice == '3') {
            print('Your Tasks:');
            for(var i in tasks){
                print(i);
            }
        }
        else if (choice == '4') {
            break;
        }
        else {
            print('Invalid choice. Try again.');
        }
    }
}