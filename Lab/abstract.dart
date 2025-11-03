import 'dart:math';

void main(){
    Dog d = Dog();
    d.name("Tom");
    d.printAge();
}

abstract class Animal{
    int age = 2;
    Animan(){
        age++;
    }
    void eat();
    void name(String name){
        print("Name is : $name");
    }
    
    void printAge(){
        print("Age is : $age");
    }
}

class Dog extends Animal{
    void eat(){
        print("Dog is eating!!");
    }
}