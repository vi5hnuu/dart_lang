// class User {
//   int id = 0;
//   String name = '';

//   @override
//   String toString() {
//     return '$id $name';
//   }

//   String toJson() {
//     return '{"id":$id,"name":$name}';
//   }
// }

// void fun() {
//   final user = User()
//     ..id = 1
//     ..name = 'vishnu kumar';
//   print(user);
//   print(user.toJson());
// }

//////////////////////////////////////////////
// import 'dart:math';

// class User {
//   int id = 0;
//   String name = '';

//   User(int id, String name) {
//     this.id = id;
//     this.name = name;
//   } //long form constructor

//   // User.random() {
//   //   id = Random().nextInt(10);
//   //   name = 'random';
//   // }

//   User.random() : this(Random().nextInt(10), 'random');

//   @override
//   String toString() {
//     return '$id $name';
//   }

//   String toJson() {
//     return '{"id":$id,"name":$name}';
//   }
// }

// void fun() {
//   print(User.random().toJson());
//   print(User(1, 'vishnu kumar').toJson());
//   print(User(1, 'vishnu kumar').toJson());
// }
//////////////////////////////////////////////
// class User {
//   int id;
//   String name;
//   User(this.id, this.name);//short form constructor

//   @override
//   String toString() {
//     return '$id $name';
//   }

//   String toJson() {
//     return '{"id":$id,"name":$name}';
//   }
// }

// void fun() {
//   print(User(1, 'vishnu kumar'));
//   print(User(1, 'vishnu kumar').toJson());
// }
//////////////////////////////////////////////
// class User {
//   String name;

//   // User(this.name);
//   // User([this.name = '']);
//   // User({this.name = ''});
//   User({required this.name});

//   @override
//   String toString() {
//     return name;
//   }
// }

// void fun() {
//   // print(User('vishnu'));
//   // print(User());
//   print(User(name: 'vishnu'));
// }
//////////////////////////////////////////////
// class User {
//   String
//       _name; //library private not class private [put this class in other file to make it private]
//   String get name {
//     return _name;
//   }

//   set name(String name) {
//     _name = name;
//   }

//   User({required name}) : _name = name;

//   @override
//   String toString() {
//     return _name;
//   }
// }

// void fun() {
//   final user = User(name: 'vishnu');
//   print(user);
//   print(user._name);
// }
//////////////////////////////////////////////
// class User {
//   String
//       _name; //library private not class private [put this class in other file to make it private]
//   String get name {
//     return _name;
//   }

//   set name(String name) {
//     _name = name;
//   }

//   User({required String name})
//       : assert(name.trim().isNotEmpty),
//         _name = name;

//   @override
//   String toString() {
//     return _name;
//   }
// }

// void fun() {
//   final user = User(name: '   ');
//   // final user = User(name: 'vishnu');
//   print(user);
//   print(user._name);
// }
//////////////////////////////////////////////
// class User {
//   final String name;

//   const User({required this.name})

//   @override
//   String toString() {
//     return name;
//   }
// }

// void fun() {
//   final user = User(name: 'vishnu');
//   print(user);
//   // user.name=''
// }
//////////////////////////////////////////////
class User {
  final String name;

  const User({required this.name});

  @override
  String toString() {
    return name;
  }

  static String className() {
    return 'User';
  }
}

void fun() {
  print(User.className());
}
//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////