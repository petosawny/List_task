// import packages and classes
import 'dart:io';

void main(List<String> arguments) {

  print('Enter length of your list ');    // illustrative sentence
  int? itemNum = int.parse(stdin.readLineSync()!);    // insert value to the variable itemNum from user

  List list = [];   //define a list

  // for loop to add a value in a specific num of times
  for (int i = 0; i < itemNum; i++) {
    print('Enter your items $i : ');  // illustrative sentence
    String? value = stdin.readLineSync()!;    // insert value to the variable value from user
    list.add(value);    //add val to the list
  }
  print("------------");      // separation between the results

  list.removeWhere((value) => value == null); // remove null value from the list
  print("your List is");     // illustrative sentence
  print(list);      // print output of list

  dynamic yourSet = list.toSet();      // define a set and its items from the list
  print("your Set is");     // illustrative sentence

  print(yourSet);     // print output of Set
  print("------------");      // separation between the results

  yourSet.forEach((element) {
    Map yourMap = {'peter': element};     // define a Map and set the key as "peter" and value as "element" which i the items of the set
    print("your Map is");     // illustrative sentence
    print(yourMap);     // print output of Map
  });

  print("-----------");     // separation between the results
}
