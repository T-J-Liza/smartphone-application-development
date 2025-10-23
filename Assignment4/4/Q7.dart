void main() {
    Map<String, String> contacts = {
        'John': '1234',
        'Alex': '5678',
        'Lina': '9101',
        'Sam': '1121'
    };
    for(var i in contacts.entries){
        if(i.key.length == 4) print(i.key);
    }
  
}