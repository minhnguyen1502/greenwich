import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home:MyHome()));

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key) ;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> _todos = ['task 1','task 2','task 3','task 4','task 5'];
  void _addTodo(){
    showDialog(
        context: context,
        builder: (BuildContext context){
         // TextEditingController ctl = TextEditingController();
          String newTodo ='';
          return AlertDialog(
            title: Text('new task'),
            content: TextField(
             // controller:ctl ,
              decoration: InputDecoration(hintText: 'Enter some text'),
              autofocus: true,
              onChanged: (value) {
              newTodo = value;
          },
            ),
            actions:<Widget> [
              TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancle')),
              TextButton(
                  onPressed: (){
                    setState(() {
                      _todos.add(newTodo);
                     // _inputText = ctl.text;
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Save'))
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('to do'),),
      body: ListView.builder(
        itemCount: _todos.length,
          itemBuilder: (context, index){
          final todo = _todos[index];
          return ListTile(
                  title: Text(todo),
                  onTap: (){
                    setState(() {
                      _todos.removeAt(index);
                    });
    },
    );
    }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
    );
  }
}
