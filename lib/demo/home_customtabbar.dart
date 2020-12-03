import 'package:flutter/material.dart';
import 'package:hzz_flutter_001_main/baseic_widget_layout_demo/basic_layout.dart';
import '../demo/listview_demo.dart';
import '../demo/bottom_navigation_bar_demo.dart';
import '../baseic_widget_layout_demo/basic_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*
      DefaultTabController 定义tabbar
    */
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          // 设置页面背景
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            // leading: 标题左边的区域

            // leading: IconButton(
            //   // tooltip 标识符
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigation',
            //   onPressed: () => debugPrint('111222_3333'),
            // ),

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
            elevation: 0.0,
            bottom: TabBar(
              // 未被选择的标签颜色
              unselectedLabelColor: Colors.black38,
              // 选中标签下面的颜色
              indicatorColor: Colors.black54,
              // 选择线条长度
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,

              // tabs:设置一组标签
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),

          /*
         ListView列表控件
         itemCount item数量
         itemBuilder 渲染视图
        */
          // body: ListViewDemo(),
          body: TabBarView(
            children: <Widget>[
              // Icon(
              //   Icons.local_florist,
              //   size: 128.0,
              //   color: Colors.black12,
              // ),
              ListViewDemo(),
              // Icon(
              //   Icons.change_history,
              //   size: 128.0,
              //   color: Colors.black12,
              // ),
              BasicWidget(),
              // Icon(
              //   Icons.directions_bike,
              //   size: 128.0,
              //   color: Colors.black12,
              // )
              LayoutDemo(),
            ],
          ),

          //左右侧抽屉效果
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                // DrawerHeader(
                //   child: Text('HEADER'),
                //   decoration: BoxDecoration(
                //     color: Colors.grey[100],
                //   ),
                // ),

                UserAccountsDrawerHeader(
                  accountName: Text('hzz',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  accountEmail: Text('hzz@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606913160346&di=6da1d7026e6c76a69796ae001724d5d6&imgtype=0&src=http%3A%2F%2Fimg.duoziwang.com%2F2018%2F05%2F201712311846889.jpg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606968974238&di=b59999f1578aa76df12b595a19cdfb99&imgtype=0&src=http%3A%2F%2Fwww.hfsgjx.com%2Fd%2Ffile%2F2016%2F07%2F05%2Fad2e200607a0b63cbdbf987742311695.jpg'),
                        // 图片填充效果
                        fit: BoxFit.cover,
                        // 图片添加滤镜
                        colorFilter: ColorFilter.mode(
                            Colors.deepPurple.withOpacity(0.6),
                            BlendMode.hardLight)),
                  ),
                ),

                ListTile(
                  title: Text('Messages', textAlign: TextAlign.right),
                  // 后面添加图标
                  trailing: Icon(
                    Icons.message,
                    color: Colors.black12,
                    size: 22.0,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Favorite', textAlign: TextAlign.right),
                  // 后面添加图标
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.black12,
                    size: 22.0,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Settings', textAlign: TextAlign.right),
                  // 后面添加图标
                  trailing: Icon(
                    Icons.settings,
                    color: Colors.black12,
                    size: 22.0,
                  ),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          ),

          //底部导航栏
          bottomNavigationBar: BottomNavigationBarDemo()
          // Container(
          //   color: Colors.white,
          //   padding: EdgeInsets.all(8.0),
          //   child: Column(
          //     // 主轴对齐
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[

          //     ],
          //   ),
          // ),
          ),
    );
  }
}
