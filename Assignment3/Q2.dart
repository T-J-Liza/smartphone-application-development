import 'dart:io';
void main(){
    print("enter the number1: ");
    int? number1 = int.parse(stdin.readLineSync()!);
    print("enter the number2: ");
    int? number2 = int.parse(stdin.readLineSync()!);
    print("the interval is from $number1 to $number2");
    
    evenNumber(number1, number2);
}


void evenNumber(int number1,int number2){
    for(int i = number1;i<=number2;i++){
        if(i%2==0){
            print("even number between interval:$i");
        }
    }
    
}