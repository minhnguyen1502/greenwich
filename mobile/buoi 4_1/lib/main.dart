import 'package:flutter/material.dart';

class Todo{
  String title;
  String description;
  Todo(this.title, this.description);
}

List<Todo> todoList = [
  Todo('To do 1','description A'),
  Todo('To do 2','description B'),
  Todo('To do 3','description C'),
];

void main(){
  runApp(MaterialApp(
    title: 'send data',
    home: TodoScreen(),
  ));
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> _todos = todoList;

  void _addTodo(){
    showDialog(
        context: context,
        builder: (BuildContext context){
          String todoTitle = "", todoDes = "";
          return AlertDialog(
            title: Text("Input Fields"),
            content: Column(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: 'Enter some text'),
                  autofocus: true,
                  onChanged: (value){
                    todoTitle = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Enter some text'),
                  autofocus: true,
                  onChanged: (value){
                    todoDes = value;
                  },
                ),
              ],
            ),
            actions: [
              TextButton(
                child: Text("Cancle"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text("Add"),
                onPressed: (){
                  setState(() {
                    _todos.add(Todo(todoTitle, todoDes));
                  });
                },
              ),
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Todos')
        ),
        body:ListView.builder(
            itemCount: _todos.length,
            itemBuilder: (context,index){
              return ListTile(
                title: Text(_todos[index].title),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen(todo: _todos[index]))
                  );
                },
              );
            }),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _addTodo,
        )
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}) : super(key: key);
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title),),
      body: Center(
          child: Text(todo.description)
      ),
    );
  }
}