import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Resim Ekleme Türleri"),
        ),
        body: ImageTurleri(),
      ),
    );
  }
}

class ImageTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.pink[100],
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset("images/1.jpg"),
                ),
                Expanded(
                  child: Image.network("http://pluspng.com/img-png/yildiz-png-yildiz-2000.png")
                ),
                Expanded(
                  child: Image.asset("images/1.jpg"),
                ),
                Expanded(
                  child: Image.network("http://pluspng.com/img-png/yildiz-png-yildiz-2000.png")
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: CircleAvatar(
                      radius:40,
                      //backgroundColor: Colors.deepPurpleAccent,
                      child: Image.network("http://pluspng.com/img-png/yildiz-png-yildiz-2000.png"),
                    ),

                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: CircleAvatar(
                      radius:40,
                      //backgroundColor: Colors.deepPurpleAccent,
                      backgroundImage: AssetImage("images/1.jpg"),
                    ),

                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: CircleAvatar(
                      radius:40,
                      //backgroundColor: Colors.deepPurpleAccent,
                      child: Image.network("http://pluspng.com/img-png/yildiz-png-yildiz-2000.png"),
                    ),

                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: CircleAvatar(
                      radius:40,
                      backgroundImage: AssetImage("images/1.jpg"),
                    ),

                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
