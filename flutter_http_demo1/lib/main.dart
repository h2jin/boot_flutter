import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_http_demo1/Post.dart';
import 'package:flutter_http_demo1/album.dart';
import 'package:http/http.dart' as http;
// 라이브러리를 여러개 가지고 올 때 라이브러리가 같은 이름의 객체가 존재 가능하다.
// 이를 좀 더 명시적으로 사용하고자 하는 경우 as 를 이용할 수 있다.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http연습',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late Future<Album> futureAlbum;
  late Future<Post> futurePost;

  @override
  void initState() {
    // futureAlbum = fetchAlbum();
    futurePost = fetchPost();
    // fetchAlbum().then(
    //   (data) => {
    //     print("id : ${data.id}"),
    //     print("userId : ${data.userId}"),
    //     print("title : ${data.title}"),
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('http lib ex'),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<int> futureNumber() async {
  return Future.delayed(
    const Duration(seconds: 3),
    () {
      return 100;
    },
  );
}

Future<Album> fetchAlbum() async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/albums/1");
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Fail to load album");
  }
}

Future<Post> fetchPost() async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/photos/1");
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("fail");
  }
}

// FutureBuilder<Album>(
//           future: futureAlbum,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Text(snapshot.data!.title);
//             } else if (snapshot.hasError) {
//               return Text("${snapshot.error}");
//             }
//             return const CircularProgressIndicator();
//           },
//         )
