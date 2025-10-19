//import 'dart:io';

/*void main(){
    File obj = File("test.txt");
    obj.writeAsStringSync("Hello! text written.", mode: FileMode.append);
    print(obj.readAsStringSync());
}
*/
/*void main(){
    File obj = File("FileDelete.csv");  //created file read kora
    print(obj.readAsStringSync())
}

//csv file
//ek ekta comma te ek ek ta column*/

//constructor in oop
/*class Animal{
    String? name;
    int? age;
    Animal(){
        print("Animal class");
    }
}
Animal(String name,int age)//parameterized const. er jonno ager by deafault const ke cmnt korte hobe , 
    this.name = name;
    this.age = age;
}
or evabe o likha jay: Animal(this.name,this.age);
Animal.dogAge(age){ //age named cons ,name er jonno o same ekhane age/name pass kora jay
this.age = age;
}/ Animal.dogAge(int age){
this.age = age  //datatuype specific kora jay
}

display(){
    print("Name: $name,Age:$age");
}
void main(){
    Animal obj = Animal("Dog",2);
    obj.display();

} 
cons Animal(this.name,this.age);//no body needed

*/

//constructor in oop
void main(){
    Animal obj = Animal("Dog",2);
    Animal obj1 = Animal("Dog",2);
    Animal obj2 = Animal("Dog",2);
    obj.display();
}


class Animal{
    String? name;
    int? age;
    // Animal(){
    //     print("Animal class");
    // }

    Animal(this.name,this.age){//parameterized const. er jonno ager by deafault const ke cmnt korte hobe , 
        this.name = name;
        this.age = age;
    }
    Animal.dogAge(age){ //age named cons ,name er jonno o same ekhane age/name pass kora jay
        this.age = age;
    }
    Animal.dogName(name){
        this.name = name;  //datatuype specific kora jay
    }
    display(){
        print("Name: $name,Age:$age");
    }
}
// or evabe o likha jay: Animal(this.name,this.age);

//getter_setter
class Animal{
  
}
int? _age;
void setName(String name){
  _name = name;
}
void setAge(int age){
  _age = age;
}
String? getName(){
  return _name;
}
int? getAge(){
  return _age;
}




