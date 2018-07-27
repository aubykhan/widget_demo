import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'I/O Extended \'18',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'I/O Extended \'18'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var listTile = ListTile(
      leading: CircleAvatar(child: Icon(Icons.person)),
      title: Text('Asadullah Yousuf'),
      subtitle: Text('Need for speed? Keep calm and use Flutter'),
      trailing: Icon(Icons.play_circle_outline, color: Colors.green),
    );

    var cards = ListView(
      children: <Widget>[
        Card(
          color: Colors.green,
          child: Container(
            height: 150.0,
            child: Center(child: Text('Green')),
          ),
        ),
        Card(
          child: Container(
            height: 150.0,
            child: Center(
              child: Text('White'),
            ),
          ),
        ),
        Card(
          color: Colors.blue,
          child: Container(
            height: 150.0,
            child: Center(
              child: Text('Blue'),
            ),
          ),
        ),
      ],
    );

    var textFields = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.person)),
        ),
        TextField(
          decoration: InputDecoration(
              labelText: 'Underline border', hintText: 'Type something'),
        ),
        SizedBox(height: 16.0),
        TextField(
          decoration: InputDecoration(
              filled: true,
              labelText: 'Underline border',
              hintText: 'Type something'),
        ),
        SizedBox(height: 16.0),
        TextField(
          decoration: InputDecoration(
              filled: true,
              labelText: 'Bordered',
              border: OutlineInputBorder(),
              hintText: 'Type something'),
        ),
        SizedBox(height: 16.0),
        TextField(
          decoration: InputDecoration(
              filled: true,
              labelText: 'Rounded',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              hintText: 'Type something'),
        ),
      ],
    );

    var stepper = Stepper(
        currentStep: 1,
        onStepContinue: () {},
        onStepCancel: () {},
        steps: <Step>[
          Step(
              isActive: true,
              state: StepState.complete,
              title: const Text('Step 1'),
              subtitle: const Text('This is step 1'),
              content: Center(
                child: Text('Step 1 contents'),
              )),
          Step(
              isActive: true,
              state: StepState.editing,
              title: const Text('Step 2'),
              subtitle: const Text('This is step 2'),
              content: Center(
                child: Text('Step 2 contents'),
              )),
          Step(
              title: const Text('Step 3'),
              subtitle: const Text('This is step 3'),
              content: Center(
                child: Text('Step 3 contents'),
              )),
        ]);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: stepper,
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
