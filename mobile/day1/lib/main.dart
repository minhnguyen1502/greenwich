import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(home:HomePage()));
//stf goi code tu dong
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap:(){
            if(isButtonPressed){
              setState(() {
                isButtonPressed = false;
              });
            }else{
              setState(() {
                isButtonPressed = true;
              });
            }
          },
          child:Container(
            color: getColor(),
          ),
        )
    );
  }
  Color getColor(){
    if(isButtonPressed){
      return Colors.red;
    }else{
      return Colors.blue;
    }
  }
}