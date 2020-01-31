import 'package:flutter/material.dart';

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Sayfasi"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("A Sayfasina Hoşgeldin!"),
            ],
          ),
        ),
      ),
    );
  }
}
