
import 'package:flutter/material.dart';
import '../demo/listview_demo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // 设置页面背景
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        // leading: 标题左边的区域
        leading: IconButton(
          // tooltip 标识符
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
          onPressed: () => debugPrint('111222_3333'),
        ),

        title: Text('MaterialApp'),
        // actions: 标题右边边的区域
        actions: <Widget>[
          IconButton(
            // tooltip 标识符
            icon: Icon(Icons.search),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('search'),
          ),
        ],

        // 设置阴影
        elevation: 30.0,
      ),
      /*
         ListView列表控件
         itemCount item数量
         itemBuilder 渲染视图
        */
      body: ListViewDemo(),
    );
  }
}
