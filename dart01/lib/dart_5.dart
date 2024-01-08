//////////////////////////////////////////////
// void fun() {
//   // String? name;
//   // print(name);
//   // name = 'vishnu';
//   // print(name);

//   /////////
//   // String? name;
//   // print(name ?? 'vishnu');
//   // name ??= 'vishnu';
//   // print(name);
//   // name ??= 'vishnu kumar';
//   // print(name);

//   ////////
//   // int? x;
//   // print(x?.isNegative);

//   //////
//   // int? x = 5;
//   // print(x!.isNegative);

//   /////
//   // User? user;
//   // user
//   //   ?..name = 'vishnu'
//   //   ..age = 21;
//   // print(user);
// }

// class User {
//   String? name;
//   int? age;
// }
//////////////////////////////////////////////
// void fun() {
//   // List<int> lst = [1, 2, 3, 4, 5];
//   // print(lst);

//   // final List<int> lst = [1, 2, 3, 4, 5];
//   // // lst=[];
//   // lst.add(5);
//   // print(lst);

//   // const List<int> lst = [1, 2, 3, 4, 5];
//   List<int> lst = const [1, 2, 3, 4, 5];
//   // lst=[];
//   // lst.add(5);//unmodifiable [deep const]
//   print(lst);
// }
//////////////////////////////////////////////
// void fun() {
//   const drinks = ['water', 'milk', 'juice', 'soda'];
//   print(drinks.first);
//   print(drinks.last);
//   print(drinks.contains('water'));
//   print(drinks.firstOrNull);
//   print(drinks.lastOrNull);
//   print(drinks.elementAtOrNull(10));
//   print(drinks.join(','));

//   List<String>? lst1;
//   List<String> lst = [...?lst1, ...drinks, 'lime'];
//   print(lst);
// }
//////////////////////////////////////////////
// void fun() {
//   const bool isSodaGood = false;
//   // const drinks = ['water', 'milk', 'juice', if (isSodaGood) 'soda'];
//   var drinks = [
//     'water',
//     'milk',
//     'juice',
//     for (int i = 0; i < 10; i++) i.toString()
//   ];
//   print(drinks);
// }
////////////////////////////////////////////////
// void fun() {
//   var drinks = <String>{
//     'water',
//     'milk',
//     '5',
//     for (int i = 0; i < 10; i++) i.toString()
//   };
//   var drinks1 = <String>{
//     'water',
//     'milk',
//   };
//   print(drinks);
//   print(drinks.contains(1));
//   print(drinks.contains('1'));
//   print(drinks.add('1'));
//   drinks.addAll({'A', 'B'});
//   print(drinks);
//   print(drinks.intersection(drinks1));
//   print(drinks.union(drinks1));
//   print(drinks.difference(drinks1));
// }
////////////////////////////////////////////////
// void fun() {
//   Map<int, String> mp = {for (int i = 0; i < 10; i++) i: 'number ${i}'};
//   print(mp);
//   print(mp.keys);
//   print(mp.values);
//   print(mp.entries);
//   print(mp.keys.toList());
// }
////////////////////////////////////////////////
// enum Grade { A, B, C, D, E, F }

// class Person {
//   String name;
//   String surname;

//   Person({required this.name, required this.surname});

//   String get fullName {
//     return '$name $surname';
//   }

//   @override
//   String toString() {
//     return fullName;
//   }
// }

// class Student {
//   String name;
//   String surname;
//   final List<String> grades = [];

//   Student({required this.name, required this.surname});

//   String get fullName {
//     return '$name $surname';
//   }

//   @override
//   String toString() {
//     return '$fullName, $grades';
//   }
// }

///////////////
// class Person {
//   String name;
//   String surname;

//   Person({required this.name, required this.surname});

//   String get fullName {
//     return '$name $surname';
//   }

//   @override
//   String toString() {
//     return fullName;
//   }
// }

// class Student extends Person {
//   final List<String> grades = [];

//   Student({required String name, required String surname})
//       : super(name: name, surname: surname);

//   @override
//   String toString() {
//     return '$fullName, $grades';
//   }
// }

// void fun() {}
////////////////////////////////////////////////
// class Person {
//   static const String className = 'person';

//   String name;
//   String surname;

//   Person({required this.name, required this.surname});

//   String get fullName {
//     return '$name $surname';
//   }

//   @override
//   String toString() {
//     return fullName;
//   }
// }

// class Student extends Person {
//   static const String className = 'Student';

//   final List<Grade> grades = [];

//   Student({required String name, required String surname})
//       : super(name: name, surname: surname);

//   @override
//   String toString() {
//     return '$fullName, $grades';
//   }
// }

// class SchoolBandMember extends Student {
//   static const String className = 'SchoolBandMemebr';

//   static const minPracticeTimeMins = 2;
//   SchoolBandMember({required String name, required String surname})
//       : super(name: name, surname: surname);
// }

// class Athlete extends Student {
//   static const String className = 'Athlete';

//   Athlete({required String name, required String surname})
//       : super(name: name, surname: surname);

//   bool get isEligible => grades.every((grade) => grade != Grade.F);
// }

// void fun() {
//   SchoolBandMember sbm = SchoolBandMember(name: 'vishnu', surname: 'kumar');
//   sbm.grades.add(Grade.A);
//   print(sbm);
//   print(SchoolBandMember.className);
// }
////////////////////////////////////////////////
// abstract class Animal {
//   bool isAlive = true;
//   void eat();
//   void move();

//   @override
//   String toString() {
//     return 'I am $runtimeType';
//   }
// }

// class Platypus extends Animal {
//   @override
//   void eat() {
//     print('Munch Munch');
//   }

//   @override
//   void move() {
//     print('Glide Glide');
//   }

//   void layEggs() {
//     print('Plop Plop');
//   }
// }

// void fun() {
//   Animal a = Platypus();
//   print(a.isAlive);
//   a.eat();
//   a.move();
//   (a as Platypus).layEggs();
//   print(a);
// }
////////////////////////////////////////////////
//interface
// abstract class DataRepository {
//   factory DataRepository() => FakeWebSrever();
//   double? fetchTemperature(String city);
// }

// class FakeWebSrever implements DataRepository {
//   @override
//   double? fetchTemperature(String city) {
//     return city.length.toDouble();
//   }
// }

// void fun() {
//   final repo = DataRepository();
//   print(repo.fetchTemperature('pilani'));
// }
////////////////////////////////////////////////
// class AnotherClass {
//   int myField = 42;
//   void myMethod() => print(myField);
// }
// class SomeClass extends AnotherClass{}

// void fun(){
//   final someClass = SomeClass();
//   someClass.myMethod();
//   print(someClass.myField);
// }
////////////////////////////////////////////////
// class AnotherClass {
//   int myField = 42;
//   void myMethod() => print(myField);
// }

// // class SomeClass implements AnotherClass{}
// class SomeClass implements AnotherClass {
//   @override
//   int myField = 43;

//   @override
//   void myMethod() => print(myField);
// }

// void fun() {
//   final someClass = SomeClass();
//   someClass.myMethod();
//   print(someClass.myField);
// }
////////////////////////////////////////////////
// abstract class Bird {
//   void fly();
//   void layEggs();
// }

// mixin EggLayer {
//   void layEggs() {
//     print('plop plop');
//   }
// }
// mixin Flyer {
//   void fly() {
//     print('flap flap');
//   }
// }

// class Robin extends Bird with EggLayer, Flyer {}

// void fun() {
//   final robin = Robin();
//   robin.fly();
//   robin.layEggs();
// }
////////////////////////////////////////////////
// import 'package:dart01/extensions/StringExtension.dart';

// void fun() {
//   String name = 'vishnu kumar';
//   String encodeName = name.encoded;
//   print(encodeName);
//   print(encodeName.decoded);
// }
////////////////////////////////////////////////
enum ProgrammingLanguage { dart, swift, javaScript }

extension on ProgrammingLanguage {
  bool get isStronglyTyped {
    switch (this) {
      case ProgrammingLanguage.dart:
      case ProgrammingLanguage.swift:
        return true;
      case ProgrammingLanguage.javaScript:
        return false;
      default:
        throw Exception('Unknow programming language');
    }
  }
}

void fun() {
  print(ProgrammingLanguage.dart.isStronglyTyped);
}
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

