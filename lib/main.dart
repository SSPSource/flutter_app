import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new LearnRoutes());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}

// 学习 Scaffold的用法
class LearnScaffold extends StatefulWidget{
  // ignore: undefined_named_parameter
  LearnScaffold({Key key,this.title}): super(key:key);
  final String title;
  @override
  _LearnScaffoldState createState() => new _LearnScaffoldState();
}

class _LearnScaffoldState extends State<LearnScaffold> {

   int _counter = 0;
   int _currentIndex = 0;

   void _incrementCounter(){
     setState(() {
       _counter++;
     });
   }

  
  @override
  Widget build(BuildContext context) {

     Widget body = new Center(
       child: new Padding(
         padding: new EdgeInsets.all(8.0),
         child: new Column(
           mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             new Container(
               padding: new EdgeInsets.only(bottom: 8.0),
               decoration: new BoxDecoration(
                 color: Colors.greenAccent
               ),
               child: new Image.network('https://flutter.io/images/flutter-mark-square-100.png'),
               margin: new EdgeInsets.only(bottom: 8.0),
               transform: new Matrix4.rotationZ(100.0),
               constraints: new BoxConstraints(minHeight: 150.0),

             ),
             new Text('Flutter is a mobile app SDK for building high-performance, high-fidelity, apps for iOS and Android, from a single codebase.',
             style:new TextStyle(fontSize: 20.0,color: Colors.teal[500]),
             softWrap: true,
               overflow: TextOverflow.ellipsis,
               maxLines: 3,
               textAlign: TextAlign.left,
             ),
             new Padding(
               padding: new EdgeInsets.only(bottom: 8.0),
               child: new Text(
                 'Flutter 是一个用一套代码就可以构建高性能安卓和苹果应用的移动应用 SDK。',
               style: new TextStyle(fontSize: 28.0,),
               softWrap: true,
                 overflow: TextOverflow.ellipsis,
                 maxLines: 2,
                 textAlign: TextAlign.left,
               ),
             ),
             new RichText(text: new TextSpan(
               text: 'Button tapped',
               style: new TextStyle(
                 inherit: true,fontSize: 32.0,color: Colors.black),
                 children: <TextSpan>[
                   new TextSpan(
                     text: '$_counter',
                     style: new TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.amber[500],
                     ),
                   ),
                   new TextSpan(
                     text: ' time'
                   ),
                   new TextSpan(
                     text: _counter == 1? '' :'s',
                     style: new TextStyle(
                       fontWeight: FontWeight.w200,
                       color: Colors.cyan[500]
                     ),
                   ),
                 ],

             ))
           ],

         ),
       ),

     );

    final List<FlatButton> footerButtons = <FlatButton>[
      new FlatButton(onPressed: () => {

      }, child: new Text('ok')),
      new FlatButton(onPressed: () => {

      }, child: new Text('Cancel')),
    ];

    final BottomNavigationBar botNavBar = new BottomNavigationBar(items:
    <BottomNavigationBarItem>[
      new BottomNavigationBarItem(icon: new Icon(Icons.access_alarm),title: new Text('Alarm'),backgroundColor: Colors.red),
      new BottomNavigationBarItem(icon: new Icon(Icons.save),title: new Text('save'),backgroundColor: Colors.lightGreen),
      new BottomNavigationBarItem(icon: new Icon(Icons.cloud),title: new Text('cloud'),backgroundColor: Colors.yellow),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.favorite),title:new Text('favorite'),backgroundColor: Colors.blue),
    ],
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.shifting,
      fixedColor: Colors.purple,
//      iconSize: 20.0,
      onTap: (int index){
        setState(() {
          _currentIndex = index;
        });
      },

    );



    // TODO: implement build
    return new MaterialApp(
      title: '学习Scaffold',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('顶部title'),
//          backgroundColor: Colors.red,
          centerTitle: true,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.add_alarm), onPressed: (){
           setState(() {
             _counter++;
              });
            }),

            new PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                  new PopupMenuItem(child: new Text('sort by'),value: 'price',),
                  new PopupMenuItem(child: new Text('sort by time'),value: 'time',),
                ],
              onSelected: (String action){
                  switch (action){
                    case 'price':
                      setState(() {
                        _counter++;
                      });
                      break;
                    case 'time':
                      setState(() {
                        _counter--;
                      });

                      break;

                  }
              },
            ),

          ],
//          bottom: new TabBar(
//            controller: new TabController(length: 3, vsync: this),
//            tabs: <Widget>[
//            new Tab(text: 'tab1',),
//            new Tab(text: 'tab2',),
//            new Tab(text: 'tab3',),
//          ],
//          ),
        ),
        body: body,
        persistentFooterButtons:footerButtons,
//        backgroundColor: new Color(Colors.green),
        bottomNavigationBar: botNavBar ,
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text('user Name'),
                accountEmail: new Text('email@example.com'),
                currentAccountPicture: new CircleAvatar(backgroundColor: Colors.red,),
                otherAccountsPictures: <Widget>[new CircleAvatar(backgroundColor: Colors.yellow,),
                new CircleAvatar(backgroundColor: Colors.pink,)],
                onDetailsPressed: (){
                setState(() {
                  _counter--;
                });
                new ClipRect(
                  child: new SizedBox(width: 100,height: 100.0,child: new Image.network('https://flutter.io/images/flutter-mark-square-100.png'),) ,
                );
                },

              ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(onPressed: _incrementCounter,tooltip: 'Increment',
        child: new Icon(Icons.add),) ,
//        bottomSheet: new TabBar(
//            tabs: <Widget>[
//              new Tab(text: 'tabs 1',),
//              new Tab(text: 'tabs 2',),
//            ],
//          isScrollable: true,
//        ),

      ),
    );
  }
  

}

class LearnRoutes extends StatelessWidget{
@override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new MaterialApp(
      title: '杀掉进程中显示的',
      home: new Scaffold(
        body: new Center(
//          child: new Padding(child: new Text('dsdsdsdsd'),padding: EdgeInsets.only(bottom: 8.0)),
          child: new RandomWords(),
        ),
        
      ),
    );
  }
}

//添加一个 有状态的部件
class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new  RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}