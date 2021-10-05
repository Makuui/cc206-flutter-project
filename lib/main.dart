import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main() => runApp(MaterialApp(
      title: "Exercise App",
      home: FirstPage(),
    ));

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Exercise 1',
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image(
                  image: NetworkImage(
                      'https://image.freepik.com/free-vector/group-people-talking-each-other_179970-994.jpg'),
                  width: 180,
                  height: 180,
                ),
              ),
              Text(
                'Written By : Mark Vincent Atinon, Jed Adrian Denosta, Natalie Jane Pacificar',
                style: TextStyle(fontSize: 10.0),
              ),
              ElevatedButton(
                child: const Text('Log in Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise 2',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );
  }
}
