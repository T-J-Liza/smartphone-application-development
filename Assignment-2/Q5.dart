import 'dart:io';
void main(){
    print("enter the natural number: ");
    int? number = int.parse(stdin.readLineSync()!);
    print("the entered number is $number");
    
    if(number>=0){
        print("it is a natural number");
    }
    int sum = 0;
    for(int i =0;i<=number;i++){
        sum = sum+i;
    }
    print("sum:$sum ");
}