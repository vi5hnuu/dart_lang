// void fun() {
//   printName('vishnu', 'kumar', null);
//   printName('vishnu', 'kumar');
//   printName('vishnu', 'kumar','T');
// }

// void printName(String firstName, String lastName, [String? title]) {
//   print("$firstName $lastName ${title ?? ''}");
// }

///////////////////////
// void fun() {
//   printName('vishnu', 'kumar');
//   printName('vishnu', 'kumar', 'T');
// }

// void printName(String firstName, String lastName, [String title = ""]) {
//   print("$firstName $lastName $title");
// }
////////////////////////////////////
/////////////////////////////////// //To make optional use  [] or {named optional}
// void fun() {
//   printName('vishnu', 'kumar');
//   printName('vishnu', 'kumar', title: 'T');
// }

// void printName(String firstName, String lastName, {String title = ""}) {
//   print("$firstName $lastName $title");
// }
///////////////////////////////////
// void fun() {
//   printName('vishnu', 'kumar', title: 'T');
// }

// void printName(String firstName, String lastName, {required title}) {
//   print("$firstName $lastName $title");
// }
///////////////////////////////////
// void fun() {
//   Function f = ({required int num}) {
//     print('The number is $num');
//   };
//   f(num: 5);
//   print(f.runtimeType);
// }
///////////////////////////////////
void fun() {
  int multiplya({required int a, required int b}) {
    return a * b;
  }

  Function multiplyb = ({required int a, required int b}) {
    return a * b;
  };

  Function multiplyc = ({required int a, required int b}) => a * b;

  print(multiplya(a: 2, b: 3));
  print(multiplyb(a: 2, b: 3));
  print(multiplyc(a: 2, b: 3));
}

///////////////////////////////////
///////////////////////////////////
///////////////////////////////////
///////////////////////////////////
///////////////////////////////////