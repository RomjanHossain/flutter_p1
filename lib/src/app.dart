import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:async';
import 'dart:convert';
import './model_img.dart';
import '../widget/imgage_list.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<ImageFetch> images = [];
  int counter = 0;
  void fetchImage() async {
    counter++;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageFetech = ImageFetch.formJson(json.decode(response.body));
    setState(() {
      images.add(imageFetech);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
      ),
    );
  }
}
