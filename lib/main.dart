import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> _routes = <String, WidgetBuilder>{
    Navigator.defaultRouteName: (context) => new myHomePage(),
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'welcon to flutter',
      theme: new ThemeData(
        primaryColor: Colors.red,
        canvasColor: Colors.grey,
        accentColor: Colors.yellow,
        hintColor: Colors.blue,
      ),
      routes: _routes,
//      home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text('dsdd'),
//          ),
//          body: BottomNavigationBar(
//            items: <BottomNavigationBarItem>[
//              new BottomNavigationBarItem(
//                  icon: Icon(Icons.home), title: Text('home')),
//              new BottomNavigationBarItem(
//                  icon: Icon(Icons.add), title: Text('add')),
//              new BottomNavigationBarItem(
//                  icon: Icon(Icons.add), title: Text('add')),
//            ],
//            onTap: (index) {
//              print('log 123');
//            },
//          )),
    );
  }
}
class myHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    new Scaffold(
          appBar: new AppBar(
            title: new Text('dsdd'),
          ),
          body: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              new BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('home')),
              new BottomNavigationBarItem(
                  icon: Icon(Icons.add), title: Text('add')),
              new BottomNavigationBarItem(
                  icon: Icon(Icons.add), title: Text('add')),
            ],
            onTap: (index) {
              print('log 123');
            },
          ));
  }
}

