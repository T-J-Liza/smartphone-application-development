import 'dart:io';

void main() {
    List<double> expenses = [];
    print('Enter 5 expense amounts:');
    double sum = 0;
    for (int i = 0; i < 5; i++) {
        double amount = double.parse(stdin.readLineSync()!);
        expenses.add(amount);
        sum = sum + amount;
    }
    
    print('Total expenses: ${sum}');
}