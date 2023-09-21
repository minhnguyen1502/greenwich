import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
//stl
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          fontFamily: 'Roboto'
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
        ),
        body: const MyForm(),
      ),
    );
  }
}
//stf
class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);
  @override
  State<MyForm> createState() => _MyFormState();
}
class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _textController,
              validator:(value) {
                if(value ==  null || value.isEmpty){
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Submitted text: ${_textController.text}'))
                    );
                  }
                },
              ),
            )
          ],
        )
    );
  }
}