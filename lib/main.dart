import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
// import 'dart:async';


void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> quotes = [
    'salut',
    'salut (Germana)',
    'multumesc',
    'multumesc(Germana)',
    'caine',
    'caine(Germana)',
    'tricou',
    'tricou(Germana)',
  ];

  List<String> audiofiles = [
    'salut.mp3',
    'hallo.mp3',
    'danke.mp3',
    'multumesc.mp3',
    'caine.mp3',
    'hund.mp3',
    'tricou.mp3',
    't-shirt.mp3'
  ];
  //AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Basic phrases'),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 32,
          crossAxisSpacing: 32,
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              child: Center(
                child: Text(
                  quotes[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 1, color: Colors.blue),
                  borderRadius: const BorderRadius.all(Radius.circular(16))
              ),
            ),
            onTap: () {
              //AudioCache player = AudioCache();
              //player.play(audiofiles[index]);
            },
          );
        },
      ),
    );
  }
}