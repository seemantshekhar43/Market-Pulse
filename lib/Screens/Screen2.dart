import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Screen2 extends StatefulWidget {
  final WebSocketChannel channel;
  Screen2({@required this.channel});
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final _textcontroller = TextEditingController();

  _senddatatoserver(){
   widget.channel.sink.add(_textcontroller.text);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DigiStock"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: _textcontroller,
              decoration: InputDecoration(hintText: "Enter Message"),
            ),
            RaisedButton(
              onPressed: () {
                _senddatatoserver();
              },
              child: Text("Send"),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder(
                stream: widget.channel.stream,
                builder: (context,  snapshot){
                 if(snapshot.hasData){
                  return Text("${snapshot.data}");
                 }
                 else{
                   return Text("${snapshot.data}");
                 }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
