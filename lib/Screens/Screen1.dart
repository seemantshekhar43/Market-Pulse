import 'package:flutter/material.dart';
import 'package:stock_market/Screens/HomePage.dart';
import 'package:stock_market/Screens/Screen2.dart';
import 'package:web_socket_channel/io.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DigiStock"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=> HomePage()
          ));
        },
        child: Text("Connect to Web Socket"),
        ),
      ),
    );
  }
}
