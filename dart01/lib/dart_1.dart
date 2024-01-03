// void fun(List<String> arguments) {
//   //dart doesnt have primitive types, everything is ab object in dart
//   int val = 10;
//   print(val);
//   print(val.isEven);

//   //no type safety
//   dynamic x = 10;
//   x = 'a';
//   print(x);

//   //inference
//   var m = 10;
//   print(m);

//   //const and final
//   const String a = 'vishnu';
//   final String b;
//   b = 'kumar';
//   print(a);
//   print(b);

//   // const dt = DateTime.now().hour;
//   final dt = DateTime.now().hour;
//   print(dt);

//   //checking the type at runtime
//   print(5 is int);
//   print(5.5 is int);
//   print(5.5 is num);
//   print(5.5 is Object);

//   print(5.runtimeType);
//   print(5.5.runtimeType);
//   print('5.5'.runtimeType);

//   const num n = 15;
//   print(n);
//   print((n as int).isEven);

//   //dart string are collection of UTF-16 units
//   print('vishnu'.codeUnits);
//   print('🙂👯‍♂️'.codeUnits);
//   print(
//       '👯‍♂️'.codeUnits); //surrogate pairs for this emoji [surrogate pair+ZWJ]
//   print('👯‍♂️'.runes); //rune
// }

//////////////////////////////

// import "package:characters/characters.dart";

// void fun() {
//   print('👯‍♂️'.runes.length); //rune length
//   print('👯‍♂️'.characters.length); //string length
// }

////////////////
void fun() {
  //strings
  var name = 'vishnu';
  name += ' kumar';
  print(name);

  //string bugger
  var strinBuf = StringBuffer("vishnu");
  strinBuf.write(' kumar');
  print(strinBuf.toString());

  //raw string
  var rs = r'vishnu \n kumar';
  var rss = '''
hello there
vishnu kumar
''';
  var rsss = """
      hello this is another
      way of multi line
    """;
  var rssss = 'hello this is another'
      'way of single line';
  print(rs);
  print(rss);
  print(rsss);
  print(rssss);
}
