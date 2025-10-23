void main() {
    List<String> friends = ['mahim', 'ayesha', 'ali', 'aara', 'amir'];
    List<String> startsWithA = friends.where((name) => name.toLowerCase().startsWith('a')).toList();
    print('Friends starting with "a": $startsWithA');
}