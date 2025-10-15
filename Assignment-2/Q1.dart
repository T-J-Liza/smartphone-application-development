import 'dart:io';
void main(){
    print("enter the number: ");
    int? number = int.parse(stdin.readLineSync()!);
    print("the entered number is $number");
    if(number%2 == 0){
        print("this is an even number");
    }
    else{
        print("this is an odd number");
    }
}