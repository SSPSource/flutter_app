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
//        canvasColor: Colors.grey,
//        accentColor: Colors.yellow,
//        hintColor: Colors.blue,
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
      //softWrap 为 false 时候，说明不允许换行，这个时候相当于 maxLines 为 1.
          body: new RichText(text: new TextSpan(
            text: 'button tap',
            style: new TextStyle(
              inherit: true,
              color:Colors.blue,
            ),
            children: <TextSpan>[
              new TextSpan(text: '我知道',
              style: new TextStyle(fontWeight: FontWeight.w200,color: Colors.green)),
              new TextSpan(text: '123'),
              new TextSpan(text: '生活',style: new TextStyle(color: Colors.grey)),
            ],
          ))
    );
  }
}

