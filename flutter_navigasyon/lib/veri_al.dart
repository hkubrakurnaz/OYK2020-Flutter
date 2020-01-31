import 'package:flutter/material.dart';

class CSayfasi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text("C Sayfasi"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("C sayfasina hoşgeldiniz!"),
              RaisedButton(
                onPressed: (){
                  Navigator.pop<bool>(context,true);
                },
                child: Text("Anasayfa dön ve veri gönder"),
                color: Colors.deepPurpleAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
