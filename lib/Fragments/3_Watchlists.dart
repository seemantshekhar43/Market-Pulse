import 'package:flutter/material.dart';
import 'package:stock_market/Screens/Screen2.dart';
import 'package:web_socket_channel/io.dart';

class Watchlists extends StatefulWidget {
  @override
  _WatchlistsState createState() => _WatchlistsState();
}

class _WatchlistsState extends State<Watchlists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Watchlists"),),
      body: Container(
        child: Center(
          child: RaisedButton(
          onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=> Screen2(channel: IOWebSocketChannel.connect("ws://echo.websocket.org"))
          ));
        },
        child: Text("Connect to Web Socket"),
        ),
        ),
      ),
    );
  }
}