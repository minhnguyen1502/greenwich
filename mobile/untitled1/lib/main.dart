import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert App',
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}): super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String _input = '';
  void _showInput(){
    showDialog(
        context: context,
        builder: (BuildContext context){
          TextEditingController ctl = TextEditingController();
          return AlertDialog(
            title: Text('Enter Some Text'),
            content: TextField(
              controller: ctl,
              decoration: InputDecoration(hintText: 'Enter some Text'),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancle' )),
              TextButton(
                  onPressed: (){
                    setState(() {
                      _input = ctl.text;
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Save')),

              TextButton(
                  onPressed: (){
                    setState(() {
                      _input = '';
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('delete'))

            ],
          );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text input'),
      ),
      body: Center(
        child: Text(
          _input.isEmpty
              ? 'tap the button'
              : '$_input',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _showInput,
        child: Icon(Icons.edit),
      ),
    );
  }
}

