import 'dart:io';
void main(){
   
   
    
    print("enter the number1: ");
    int? number1 = int.parse(stdin.readLineSync()!);
    print("enter the number2: ");
    int? number2 = int.parse(stdin.readLineSync()!);
 
     print("which operation{+,-,*,/} do you want to perform: ");
     String? operation = stdin.readLineSync();
    
    if (operation == "+"){
        int add = number1+number2;
        print(add);
    }
    else if (operation == "-"){
        int sub = number1-number2;
        print(sub);
    }
    else if (operation == "*"){
        int multi = number1*number2;
        print(multi);
    }
    else if (operation == "/"){
        if (number2==0){
            print("invalid");
        }
        else{
            double div = number1/number2;
            print(div);
            
        }
    }
    
    
}
