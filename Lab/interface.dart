import 'dart:math';

void main(){
    Dog d = Dog();
    d.name("Tom");
    d.printAge();
}

abstract class Animal{
    int age = 2;
    Animal(){
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

class Dog implements Animal{
    @override
    int age = 1;
    
    @override
    void name(String name){
        print("Dogs name: $name");
    }
    
    void printAge(){
        print("Dogs age: $age");
    }
    void eat(){
        print("Dog is eating!!");
    }
}