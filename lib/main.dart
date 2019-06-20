import 'package:flutter/material.dart';
import 'package:flutter_pratice/pages/hello.dart';
import 'package:flutter_pratice/pages/image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new SingleChildScrollViewTestRoute(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SingleChildScrollViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              new Container(
                height: 40.0,
                width: double.infinity,
                child: new RaisedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return new Hello();
                      })
                    );
                  },
                  child: new Text("Hello World"),
                  color: Colors.blue,
                ),
              ),
              new Divider(),
              new Container(
                margin: EdgeInsets.only(top: 0),
                height: 40.0,
                width: double.infinity,
                child: new RaisedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return new ImageDemo();
                        })
                    );
                  },
                  child: new Text("图片展示"),
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
