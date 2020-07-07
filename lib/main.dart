
import 'package:flutter/material.dart';
import 'package:p8_pemobile/post_result.dart';
import 'package:p8_pemobile/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pertemuan 9"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null) ? postResult.id + " | " + postResult.name + " | " + postResult.job + " | " + postResult.created : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI("Syahrul", "Mahasiswa").then((value){
                    postResult = value;
                    setState(() {
                      
                    });
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
