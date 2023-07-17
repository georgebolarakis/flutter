import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Website --> Album Json --> Dart class --> present the info flutter

//Dart class <-> Json
//class Album userId, id, title
//fromJson --> Dart Object
class Album {
  final int userId;
  final int id;
  final String title;

  const Album({required this.userId, required this.id, required this.title});

//var myAlbum = Album(1,1,'some information')
//method --> create an instance of object
  //factory keyword
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

//Function async Future Album(grab from the website)
//hard coded to always grab album no1
Future<Album> fetchAlbum(int albumId) async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/$albumId'),
    //if we need to authenticate we add the header as follows
    //headers: {HttpHeaders.authorizationHeader: 'Basic your_api_toke_here',}
  );

  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failure to load album');
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

  void _fetchAlbum() {
    //if it is null we are parsing 1
    int albumId = int.tryParse(_controller.text) ?? 1;
    setState(
      () {
        futureAlbum = fetchAlbum(albumId);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    //when the app starts, fetch the Album object and assign it to futureAlbum
    futureAlbum = fetchAlbum(1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get http example'),
        ),
        //we need to wait to get the data
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: _controller,
                  decoration: const InputDecoration(labelText: 'AlbumId number'),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: _fetchAlbum,
                child: const Text('Submit'),
              ),
              const SizedBox(
                height: 16,
              ),
              FutureBuilder<Album>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.title);
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
