import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(body: Center(child: Counter())),));

class Counter extends StatefulWidget {
  const Counter ({Key? key}): super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment(){
    _counter++;
  }
  void _reset(){
    _counter = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: _increment,
            child: Text('hihhi')),
        Text('count $_counter'),
        TextButton(
            onPressed: _reset,
            child: Text('hahahah')),
      ],
    );
  }
}


