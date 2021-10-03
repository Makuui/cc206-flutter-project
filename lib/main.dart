import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(TitlePage());

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Exercise 1 '),
            ),
            backgroundColor: Colors.blue[500],
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image(
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/people-waving-hand-illustration-concept_52683-29825.jpg?size=626&ext=jpg'),
                  ),
                ),
                Text(
                  'Written By : Mark Vincent Atinon, Natalie Jane Pacificar, Jed Adrian Denosta',
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: const Text('Activity Number 2'),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue, primary: Colors.white),
                ),
              ],
            ),
          )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
