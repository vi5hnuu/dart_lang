///////////////////////////////////////////
// Future<int> getCount() {
//   return Future<int>.delayed(Duration(seconds: 5), () => 5);
// }

// void fun() {
//   getCount()
//       .then(print)
//       .catchError(print)
//       .whenComplete(() => print('completed'));
// }
///////////////////////////////////////////
// Future<int> getCount() {
//   return Future<int>.delayed(Duration(seconds: 5), () => 5);
// }

// void fun() async {
//   try {
//     int val = await getCount();
//     print(val);
//   } catch (ex) {
//     print(ex);
//   } finally {
//     print('completed');
//   }
// }
///////////////////////////////////////////
// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;

// class Todo {
//   int? id;
//   String todo;
//   bool completed = false;
//   int userId;

//   Todo(
//       {this.id,
//       required this.todo,
//       required this.userId,
//       bool completed = false});

//   factory Todo.fromJson(Map<String, Object?> todoJson) {
//     return Todo(
//         todo: todoJson['todo'] as String,
//         id: todoJson['id'] as int?,
//         userId: todoJson['userId'] as int,
//         completed: todoJson['completed'] as bool);
//   }

//   @override
//   String toString() {
//     return 'id : $id\nuserId : $userId\ntodo : $todo\ncompleted : $completed';
//   }
// }

// Future<Iterable<Todo>> getTodos() async {
//   try {
//     const url = 'https://dummyjson.com/todos';
//     final uri = Uri.parse(url);
//     final res = await http.get(uri);
//     if (res.statusCode != 200) {
//       throw HttpException('request failed $res.statusCode');
//     }
//     final Map<String, dynamic> data = jsonDecode(res.body);
//     List<dynamic> rawTodos = data['todos'];

//     final Iterable<Todo> todos =
//         rawTodos.map<Todo>((todo) => Todo.fromJson(todo));

//     return todos;
//   } on SocketException catch (ex) {
//     print(ex);
//   } on HttpException catch (ex) {
//     print(ex);
//   } on FormatException catch (ex) {
//     print(ex);
//   } catch (ex) {
//     print(ex);
//   }
//   return Iterable.empty();
// }

// void fun() async {
//   final todos = await getTodos();
//   print(todos);
// }
///////////////////////////////////////////
// import 'dart:io';

// void fun() async {
//   try {
//     final file = File('assets/file.txt');
//     final contents = await file.readAsString();
//     print(contents);
//   } on FileSystemException catch (ex) {
//     print(ex);
//   } catch (ex) {
//     print(ex);
//   }
// }
///////////////////////////////////////////
import 'dart:async';
import 'dart:convert';
import 'dart:io';

// void fun() async {
//   StreamSubscription<List<int>>? subs;

//   try {
//     final file = File('assets/file_long.txt');
//     final stream = file.openRead();
//     subs = stream.listen(
//         (event) {
//           print(event);
//           // print(event.length);
//           subs?.cancel();
//           subs?.cancel();
//         },
//         onError: print,
//         onDone: () {
//           print('done');
//         },
//         cancelOnError: true);

//     // await for (var data in stream) {
//     //   print(data.length);
//     // }
//   } on FileSystemException catch (ex) {
//     print('file does not exists.');
//   } catch (ex) {
//     print(ex);
//   } finally {
//     // subs?.cancel();
//   }
// }
// ////////////
// void fun() async {
//   StreamSubscription<List<int>>? subs;

//   try {
//     final file = File('assets/file_long.txt');
//     final stream = file.openRead();
//     await for (var data in stream.transform(utf8.decoder)) {
//       print(data);
//     }
//   } on FileSystemException catch (ex) {
//     print(ex);
//   } catch (ex) {
//     print(ex);
//   } finally {
//     // subs?.cancel();
//   }
// }
///////////////////////////////////////////
import 'dart:isolate';

void playHideAndSeekTheLlongVersion(SendPort sendPort) {
  var counting = 0;
  for (var i = 0; i < 1000000000; i++) {
    counting = i;
  }
  sendPort.send('$counting! read or not, here i come');
}

void fun() async {
  final receivePort = ReceivePort();
  final isolate =
      await Isolate.spawn(playHideAndSeekTheLlongVersion, receivePort.sendPort);
  receivePort.listen((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  });
}
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////