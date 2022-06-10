void main() {
// 1)addAll Method :- add all the element from another map data;
//  List ls = ["bhargav","mayank"];
//  Map map1 = {1 : 'Bhargav',
//       2 : 'rohan',
//       3 : 'kapil',
//       4 : 'vaidehee'};

// Map map2 = {"trainee" : "trainer"};
//   map2.addAll(map1);

// print(map2);

// 2) addEntries method all elements in map

// 3) clear()
// Map fruits = {1 :'mango',2 :'watermelon',3 :'orange'};
//   print(fruits);
//   fruits.clear();
//   print(fruits);

//4) containsKey,isEmpty return bool
  Map fruits = {1: 'mango', 2: 'watermelon', 3: 'orange'};
// print(fruits.containsKey(2));

  print(fruits.isEmpty); //bool

  print(fruits.isNotEmpty); // bool

  print(fruits.keys); // returns keys

  print(fruits.length); // return length

  print(fruits.values); // returns values

  print(fruits.containsValue('mango')); //returns bool
  fruits.forEach((k, v) {
    print('$k: $v');
  });

  fruits.putIfAbsent(9, () => 'Random');

  print(fruits); // add value if key are not exist in map

  fruits.remove(9); //remove at specified keys

  print("toString:" + fruits.toString());

  fruits.update(3, (value) => "update");
  print(fruits); //updates the specified key's value.

  print(fruits[1] == fruits[2]); //it compares the specified key of values

  //= operator add new value at specified key
  fruits[5] = "banana";
  print(fruits[5]);

  Map fruitsUnmodifiable = Map.unmodifiable(fruits);
//fruitsUnmodifiable[1] = " lemon"; can't able to modify the map
}
