import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        // 设置主题颜色
          primaryColor: const Color(0xFF63CA6C),
      ),
      home: new Scaffold(
        // 设置App顶部的AppBar
        appBar: new AppBar(
          // AppBar的标题
            title: new Text('ddd',
                // 标题文本的颜色
                style: new TextStyle(color: Colors.white)),
            // AppBar上的图标的颜色
            iconTheme: new IconThemeData(color: Colors.white)
        ),
        // 页面底部的导航栏
        bottomNavigationBar: new CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: new Icon(Icons.add),
                title: Text('ddd')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.add),
                title: Text('ddd')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.add),
                title: Text('ddd')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.add),
                title: Text('ddd')),
          ],
          currentIndex: 0,
          // 底部Tab的点击事件处理
          onTap: (index) {

          },
        ),
        // 侧滑菜单，这里的MyDrawer是自定义的Widget

      ),
    );
  }

}