import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
          body: new ListView(
            children: <Widget>[
             new Image.asset('images/adv_mngcente_bidding.png'),
              new Divider(),
              new Image(image: new AssetImage('images/adv_mngcente_bidding.png')),
             new Divider(),
//              普通网络加载
              new Image.network('http://img03.tooopen.com/uploadfile/downs/images/20110714/sy_20110714135215645030.jpg'),
//           从缓存加载图片
            new CachedNetworkImage(
                imageUrl: 'http://img03.tooopen.com/uploadfile/downs/images/20110714/sy_20110714135215645030.jpg',
              placeholder: new CircularProgressIndicator(),
              errorWidget: new Icon(Icons.error),
            ),
//              淡入动画加载图片
            new FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'http://img03.tooopen.com/uploadfile/downs/images/20110714/sy_20110714135215645030.jpg')
            ],
          )
    );
  }
}

