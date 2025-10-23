void main() {
    Map<String, dynamic> person = {
        'name': 'Mahim',
        'age': 22,
        'country': 'Bangladesh'
    };

    person['country'] = 'Japan';

    for (var entry in person.entries) {
        print('${entry.key} : ${entry.value}');
    }
}