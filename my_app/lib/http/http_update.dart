import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Website --> Album Json --> Dart class --> present the info flutter

//Dart class <-> Json
//class Album userId, id, title
//fromJson --> Dart Object
class Album {
  final int id;
  final String title;

  const Album({required this.id, required this.title});

//var myAlbum = Album(1,1,'some information')
//method --> create an instance of object
  //factory keyword
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}

//Function async Future Album(grab from the website)
//hard coded to always grab album no1
Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    //if we need to authenticate we add the header as follows
    //headers: {HttpHeaders.authorizationHeader: 'Basic your_api_toke_here',}
  );

  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failure to load album');
  }
}

//Update functionality
Future<Album> updateAlbum(String title) async {
  //http put
  final response = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    headers: <String, String>{'content-Type': 'application/json; charset=UTF-8'},
    body: jsonEncode(
      <String, String>{
        'title': title,
      },
    ),
  );
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to update');
  }
}

//flutter app --> Text(Widget)

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    //when the app starts, fetch the Album object and assign it to futureAlbum
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Update Data Example',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Update http example'),
        ),
        //we need to wait to get the data
        body: Center(
            child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(snapshot.data!.title),
                    TextField(
                      controller: _controller,
                      decoration: const InputDecoration(hintText: 'Update Title'),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            futureAlbum = updateAlbum(_controller.text);
                          });
                        },
                        child: const Text('Update data'))
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
            }
            return const CircularProgressIndicator();
          },
        )),
      ),
    );
  }
}
