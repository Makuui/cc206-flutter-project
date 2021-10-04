import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Exerise 2',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150.0,
            ),
            Center(
              child: Text(
                'Simple Log in Page Flutter',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 20.0),
                filled: true,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 20.0),
                filled: true.
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                child: const Text('Log in'),
                onPressed: () {
                },
              ),
          ],
        ),
      ),
    );
  }
}
