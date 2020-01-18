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


class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  bool isPlaying = false;
  AudioStream stream = new AudioStream("http://91.121.222.81:8524/stream");
//http://online-melodiafm.tavrmedia.ua/MelodiaFM
  __play1(){

    if(isPlaying) {
      setState(() {
        isPlaying = false;
      });

      stream.stop();
    } else {
      setState(() {
        isPlaying = true;
      });
      stream.start();
    }


    // http://91.121.222.81:8524/stream
    // http://91.121.222.81:8524/stream
    // http://online-melodiafm.tavrmedia.ua/MelodiaFM

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Row(

          children: [
            Image.asset(
              'bg/title2.png',
              fit: BoxFit.contain,
              height: 100,
              width: 130,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('Radio Biz'))
          ,
        ],
      ),
      ),
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
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomRight,


                child: new  FloatingActionButton(
                    onPressed: __play1,
                    tooltip: 'Increment',
                    child: isPlaying ? Icon(Icons.pause):Icon(Icons.play_arrow) ) //your elements here
                ),
              )]
        )
    );
  }
}


