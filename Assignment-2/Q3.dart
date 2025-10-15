import 'dart:io';
void main(){
    print("enter the number: ");
    int? number = int.parse(stdin.readLineSync()!);
    print("the entered number is $number");
    
    if(number > 0){
        print("it is a positive number");
    }
    else if(number < 0){
        print("it is a negative number");
    }
    else{
        print("it is zero");
    }
}