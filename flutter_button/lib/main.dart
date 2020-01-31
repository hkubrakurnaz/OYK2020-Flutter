import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Buton Türleri"),
            backgroundColor: Colors.deepOrange,
          ),
          body: ButonTurleri(),
        ));
  }
}

class ButonTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[200],
      width: 500,
      height: 700,
      //margin:// EdgeInsets.all(10),//Her yerden aynı uzaklık verir
      //EdgeInsets.symmetric(horizontal: 50),//sadece yanlardan uzaklık verir
      child: Column(
        children: <Widget>[
          Text("Buton Türleri"),
          RaisedButton(
            onPressed: () {
              debugPrint("1.Butona tiklandi.");
            },
            color: Colors.pink[300],
            child: Text("Raised Button1"),
          ),
          RaisedButton(
            onPressed: () => debugPrint("2.Butona tiklandi."),
            color: Colors.greenAccent,
            child: Text("Raised Button2"),
          ),
          RaisedButton(
            onPressed: () => uzakFonksiyon(),
            color: Colors.indigo,
            child: Text("Raised Button3"),
          ),
          IconButton(
            color: Colors.deepPurpleAccent,
            onPressed: () {
              debugPrint("Icon Button'a tiklandi.");
            },
            icon: Icon(
              Icons.all_inclusive,
              color: Colors.green,
            ),
          ),
          FlatButton(
            //yazi butonu
            onPressed: () {
              debugPrint("Flat Button'a tiklandi");
            },
            child: Text(
              "Flat Button",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }

  void uzakFonksiyon() {
    debugPrint("3.Butona tiklandi.");
  }
}
