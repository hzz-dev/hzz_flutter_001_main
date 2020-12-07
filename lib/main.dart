import 'package:flutter/material.dart';
// import 'model/post.dart';
// import 'demo/listview_demo.dart';
// import 'demo/hello_demo.dart';
// import 'demo/home_basic.dart';
import 'demo/home_customtabbar.dart';

import 'baseic_widget_layout_demo/basic_sliver.dart';
import 'baseic_widget_layout_demo/basic_navigator.dart';
import 'demo/from_demo.dart';
import 'demo/material_components.dart';
import 'demo/state/state_management_demo.dart';
import 'demo/stream/stream_demo.dart';
import 'demo/redart/rxdart_demo.dart';
import 'demo/bloc/bloc_demo.dart';
import 'demo/http/http_demo.dart';

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
      // home: NavigatorDemo(),
      // SliverDemo(),
      // Home(),
      // 设置主题颜色

      initialRoute: '/http',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Pagepush(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
      },
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        // 点击按钮选择时的水波纹效果
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white10,
      ),
    );
  }
}
