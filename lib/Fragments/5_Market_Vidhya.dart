import 'package:flutter/material.dart';
class MarketVidhya extends StatefulWidget {
  @override
  _MarketVidhyaState createState() => _MarketVidhyaState();
}

class _MarketVidhyaState extends State<MarketVidhya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Market Vidhya"),),
      body: Container(
        child: Center(
          child: Text("Market"),
        ),
      ),
    );
  }
}