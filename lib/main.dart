import 'package:cached_network_image/cached_network_image.dart';
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
            // CachedNetworkImage(
            //   fit: BoxFit.fill,
            //   width: 200,
            //   height: 200,
            //   imageUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
            //   // imageBuilder: (context, imageProvider) => CircleAvatar(
            //   //   radius: 50,
            //   //   backgroundImage: imageProvider,
            //   // ),
            //   imageBuilder: (context, imageProvider) => Container(
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: imageProvider,
            //           fit: BoxFit.cover,
            //           colorFilter: ColorFilter.mode(Colors.red, BlendMode.dst)),
            //     ),
            //   ),
            //   progressIndicatorBuilder: (context, url, downloadProgress) =>
            //     CircularProgressIndicator(value: downloadProgress.progress),
            //   errorWidget: (context, url, error) => Icon(Icons.error),
            // ),
            Image.asset('images/owl-2.jpeg',
              width: 200,
              height: 400,
              fit: BoxFit.cover,
              color: Colors.red,
              colorBlendMode: BlendMode.hue,
              semanticLabel: 'hello'
            ),
            // Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            // FadeInImage.assetNetwork(
            //     placeholder: 'images/owl-2.jpeg',
            //     image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            // ),
            // Image(
            //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            // ),
          ],
        ),
      ),
      ),
    );
  }
}
