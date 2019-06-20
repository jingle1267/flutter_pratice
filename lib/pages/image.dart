import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Text('下面是本地图片'),
            new Image.asset('assets/ic/img_head.jpeg'),
            new Divider(),
            new Text('下面是网络图片'),
            new Image.network('https://raw.githubusercontent.com/jingle1267/TestResource/master/imgs/Penguins.jpg'),
          ],
        )
      ),
    );
  }
}
