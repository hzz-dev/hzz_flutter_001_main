import 'package:flutter/material.dart';
// import 'model/post.dart';
// import 'demo/listview_demo.dart';
// import 'demo/hello_demo.dart';
// import 'demo/home_basic.dart';
import 'demo/home_customtabbar.dart';

// void main() {
//   runApp(App());
// }
void main() => runApp(App());

class App extends StatelessWidget {
  /*
    @override 覆盖父类里build的方法
    context 接收的产数
    Widget 返回Widget的对象
  */
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // 关掉debug
      debugShowCheckedModeBanner: false,
      home: Home(),
      // 设置主题颜色
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        // 点击按钮选择时的水波纹效果
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white10,
      ),
    );
  }
}
