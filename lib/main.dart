
import 'package:flutter/material.dart';

import 'package:url_audio_stream/url_audio_stream.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Radio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;





  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  __play1(){
    AudioStream stream = new AudioStream("http://online-melodiafm.tavrmedia.ua/MelodiaFM");//http://91.121.222.81:8524/stream
    stream.start();
  }
  __pause() {

  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("bg/poster.jpg"),
                  fit: BoxFit.contain,),
              ),
            ),
            new Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: new  FloatingActionButton(
                    onPressed: __play1,
                    tooltip: 'Increment',
                    child: Icon(Icons.play_arrow))//your elements here
                ),
              )]
        )
    );
  }


 /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('bg/poster.jpg'),
              fit: BoxFit.cover
            )
          ),),
           new  FloatingActionButton(
                onPressed: __play1,
                tooltip: 'Increment',
                child: Icon(Icons.play_arrow)
           )
        ],
      )
    );*/


  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: __play1,
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ),
    );*/


}


