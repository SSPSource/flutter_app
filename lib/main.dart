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
  //   该变量以下划线（_）开头，在Dart语言中使用下划线前缀标识符，会强制其变成私有的
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
//  set集合 Set比List更合适，因为Set中不允许重复的值。
//  没有顺序且不能重复的集合，所以不能通过索引去获取值
  final _saved = new Set<WordPair>();

  Widget _buildRow(WordPair pair){

    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon( alreadySaved ? Icons.favorite : Icons.favorite_border ,
          color: alreadySaved ? Colors.red : null,),
      onTap: () {
//        在Flutter的响应式风格的框架中，调用setState() 会为State对象触发build()方法，从而导致对UI的更新
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          }else{
            _saved.add(pair);
          }
        });
      }
    );
  }

  Widget _buildSuggestions(){
//    ListView的builder工厂构造函数允许您按需建立一个懒加载的列表视图。
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
        itemBuilder: (context,i){
          if(i.isOdd) return new Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));

          }
          print('=====listview row===$index');
          return _buildRow(_suggestions[index]);
        }
    );
  }

  void _pushSaved (){
    Navigator.of(context).push(
       new MaterialPageRoute(
    builder: (context){
      final tiles = _saved.map(
          (pair){
            return new ListTile(
              title: new Text(pair.asPascalCase,style: _biggerFont,),
              trailing: new IconButton(icon: new Icon(Icons.add), onPressed: (){

              }),

            );
          }
      );
      final dd  = _saved.map(
          (pair){
            return pair.asLowerCase;
          }
      );
      print('==title==$dd');
      final  divided = ListTile.divideTiles(tiles: tiles,context: context,).toList();

      return new Scaffold(appBar: new AppBar(title: new Text('sss'),),
      body: new ListView(children: divided),);
    }
    ),

    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  return new Scaffold(
    appBar: new AppBar(
      title: new Text('listview'),
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.add), onPressed: _pushSaved),
      ],
      
    ),
    body: _buildSuggestions() ,
  );





  }
}