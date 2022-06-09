void main(List<String> args) {
  void main() {
//fixed length list
    var fixedList = List<int>.filled(5, 0);

//fixedList.add(10);
    print(fixedList);

    var list = [2, 5, 0, 9];
    list.add(90);

//list.indexof('4');

//will remove the given element from list
// list.remove(5);

//list.removeLast();
//list.insert(1,24);
//list.replaceRange(0,2,[3,8]);
// list.sort();

//gives random number
// list.shuffle();

// var list2 = List.empty();

//final numbers = <int>[1,2,3];

//Creates a list from elements. [...]
// var list3 = List.of(iterable elements);

//Creates an unmodifiable list
// var list3 = List.unmodifiable(iterable)

//returns first element
// print(list.first);

//bool
// list.isEmpty;
// list.isNotEmpty;

//give reversed order
// print(list.reversed);
//gives type of list

//list.single only works when list contains only one element
//it will return that one element

//~~~~~~~~Methods~~~~~~~~~~~~
//add element in list
// list.add(2);

//adds multiple element
// list.addAll([3,2,4]);

//returns bool, we can add condition in any method
// var list2 = list.any((element) => element >= 5);
// print(list2);

//list.clear();

//gives boolean value
// print(list.contains(5));

//returns that index element
// var list3 = list.elementAt(2);

//every => specify that all the element fullfill th condition or not returns bool
// print(list.every((e) => e>1));

// firstWhere returns first statisfied element index
// print(list.firstWhere((e)=> e<5));

//list.indexOf('element')

//list.removewhere => removes all the elements from list that satisfy test
// print(list.removeWhere((e) => e == 2));

//asMap method returns the map from list
// print(list.asMap());
  }
}
