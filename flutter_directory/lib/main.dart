import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Directory"),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: _directoryLayout(context),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
             // width: 180.0,
              // height: 300.0,
              child: const Card(child: FloatingActionButton(
                elevation: 10,
                mini: false,
                //onPressed: () {},
                child: Icon(Icons.add),
              ),),
            ),
           // Text("                                                                                      "),


          ],
        )
      ],
    );
  }
}

Widget _directoryLayout(BuildContext context) {
  final name = [
    "Kubra",
    "Derya",
    "Deniz",
    "Nil",
    "Sercan",
    "Sıla",
    "Rabia",
    "Defne",
    "Cihan",
    "Çağrı"
  ];
  final numbers = [
    "0545 000 00 000",
    "0545 000 00 000",
    "0545 000 00 000",
    "0545 000 00 000",
    "0545 000 00 000",
    "0545 000 00 000",
    "0545 000 00 000",
    "0545 000 00 000",
    "0545 000 00 000",
    "0545 000 00 000"
  ];
  context:
  context;
  return ListView.builder(
    itemCount: name.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn4.iconfinder.com/data/icons/education-circular-1-1/96/40-512.png"),
        ),
        title: Text(name[index]),
        subtitle: Text(numbers[index]),
        trailing: Icon(Icons.call),
      );
    },
  );
}
