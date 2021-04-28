import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Image Widget'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
      child: SingleChildScrollView( // this is new
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/owl-2.jpeg',
              width: 200,
              height: 400,
              fit: BoxFit.fill,
              color: Colors.black,
              colorBlendMode: BlendMode.hue,
              semanticLabel: 'hello',
            ),
            FadeInImage.assetNetwork(
                placeholder: 'images/owl-2.jpeg',
                image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
          ],
        ),
      ),
      ),
    );
  }
}
