import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'My app by Scarlet',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Scarlet Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://my.alfred.edu/zoom/_images/fall-drone-shot.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: campo(),
    ),
  );
}

Widget campo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
    child: TextField(
      decoration: InputDecoration(
        hintText: "user",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
