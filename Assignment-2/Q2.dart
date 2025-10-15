import 'dart:io';
void main(){
    print("enter the letter: ");
    String? letter = stdin.readLineSync();
    print("the letter is $letter");
    
   
    if(letter != "a" && letter != "e" && letter != "i" && letter != "o" && letter != "u"){
        print("it is a consonent");
    }
    else{
        print("it is a vowel");
    }
}