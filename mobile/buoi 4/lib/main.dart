import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Navigation',
    home: FirstScreen(),
  ));
}
//stl
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Center(
            child: ElevatedButton(
              child: Text('Go to Second Screen'),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen())
                );
              },
            )
        )
    );
  }
}
//stl
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(
            child: ElevatedButton(
              child: Text('Go to Previous Screen'),
              onPressed: (){
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => SecondScreen())
                // );
                Navigator.pop(context);
              },
            )
        )
    );
  }
}