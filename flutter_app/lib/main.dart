import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ayın Evreleri"),
        ),
        body: Evreler(),
      ),
    );
  }
}

class Evreler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent[100],
      child: Column(
        children: <Widget>[
          Text(
            "Ayın Evreleri",
            style: TextStyle(fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //alt enter
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/ilkdordun.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/dolunay.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/sondordun.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/hilal.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/ilkdordun.jpg"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Center(
              child: FadeInImage.assetNetwork(
            placeholder: "images/giphy.gif",
            image:
                "https://i4.hurimg.com/i/hurriyet/75/770x0/5d8d97ac0f254415c8b23fbb",
            width: 380,
            height: 400,
          ))
        ],
      ),
    );
  }
}
