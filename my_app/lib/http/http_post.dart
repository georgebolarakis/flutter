import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// we need to create a class for every object that we need to store on a server via http
class Album {
  final int id;
  final String title;

  const Album({required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(id: json['id'], title: json['title']);
  }
}

void main() => runApp(const MyApp());

Future<Album> createAlbum(String title) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{'content-Type': 'application/json; charset=UTF-8'},
    body: jsonEncode(
      <String, String>{
        'title': title,
      },
    ),
  );

  if (response.statusCode == 201) {
    return Album.fromJson(
      jsonDecode(response.body),
    );
  } else {
    throw Exception('Failed to create album');
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //initial variable
  //title controller
  final TextEditingController _controller = TextEditingController();
  Future<Album>? _futureAlbum;

  //scaffold --> form textfiled w/button
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Send data'),
        ),
        body: Container(
          alignment: Alignment.center, padding: const EdgeInsets.all(8),
          child: (_futureAlbum == null)
              ? buildColumn()
              : buildFutureBuilder(), //textField, button //cheking Album, loading widget, title
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Album title'),
        ),
        const SizedBox(
          height: 15,
        ),
        //onPressed --> createAlbum --> http.post()
        //create the album
        ElevatedButton(
            onPressed: () {
              setState(() {
                _futureAlbum = createAlbum(_controller.text);
              });
            },
            child: const Text('Add Album'))
      ],
    );
  }

//FutureBuilder

  FutureBuilder<Album> buildFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.title);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
