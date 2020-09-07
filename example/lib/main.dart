import 'package:flutter/material.dart';
import 'package:blockquote/blockquote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blockquote Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blockquote Example'),
      ),
      body: BlockQuote(
        outerPadding: const EdgeInsets.all(20),
        blockColor: Colors.blueAccent,
        blockWidth: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Lorem ipsum dolor sit amet, is the best place to hide a text.',
              textAlign: TextAlign.justify,
            ),
            Text(
              '~ Change my mind!',
              textAlign: TextAlign.end,
            )
          ],
        ),
      ),
    );
  }
}
