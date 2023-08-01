import 'package:flutter/material.dart';
void main() => runApp(MyApp());
//stl
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHome(),
    );
  }
}
//stf
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}
class _MyHomeState extends State<MyHome> {
  String _inputText ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Use input exp'),
      ),
      body:Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Enter some text',
          ),
          onChanged: (value){
            setState(() {
              _inputText = value;
            });
          },
        ),
      ),
      bottomSheet: Container(
        height: 150,
        alignment: Alignment.bottomLeft,
        child: Text('You entered $_inputText'),
      ),
    );
  }
}