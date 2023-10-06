import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
//stl
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Style';
    return MaterialApp(title: appTitle,
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,),
        body: const MyForm(),),);
  }
}
//stl
class MyForm extends StatelessWidget {
  const MyForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 14,),
            TextField(
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)),

              hintText:'Enter your last name',
              prefixIcon: Icon(Icons.person,size:22)
    ),
    ),
          const SizedBox(height: 22,),
          TextFormField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText:'Enter your first name',
                labelStyle: TextStyle(
                color: Colors.grey
    ),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)),
    ),
    ),
          const SizedBox(height: 22,),
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
                )
            ),
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 16),
            )
        )
        ],
      ),
    );
  }
}