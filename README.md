  一 .基本命令

    flutter create +(项目名称)  创建项目 
    cd my_app
    flutter emulator  //列出项目中可以使用的设备 
    flutter emulator --launch +(指定设备 )  //打开模拟器 
    flutter run  //在模拟器上运行项目 
    flutter run  -d +(指定设备 ID号) //运行在指定设备上  

 二 .知识点 

    1.入口函数 
    // void main() {
    //   runApp(App());
    // }
    void main() => runApp(App());
    箭头函数相当于 runApp(App());

    2.自定义部件使用类 
    import 'package:flutter/material.dart';
    import 'model/post.dart';
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
          home: Home(),
          // 设置主题颜色
          theme: ThemeData(primaryColor: Colors.yellow),
        );
      }
    }
    class Home extends StatelessWidget {
      Widget _listItemBuilder(BuildContext context, int index) {
        return Container(
          color: Colors.white,
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.network(posts[index].imageUrl),
              // 下面留控件
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
                // Theme.of设置文字主题
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].title,
                // Theme.of设置文字主题
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 16.0),
            ],
          ),
        );
      }
      @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return Scaffold(
            // 设置页面背景
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              title: Text('MaterialApp'),
              // 设置阴影
              elevation: 30.0,
            ),
            /*
             ListView列表控件
             itemCount item数量
             itemBuilder 渲染视图
            */
            body: ListView.builder(
              itemCount: posts.length,
              itemBuilder: _listItemBuilder,
            ));
      }
    }
    class Hello extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Center(
          child: Text(
            'hello',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        );
      }
    }

    StatelessWidget 不需要修改数据的的部件使用这个状态  
    StatefulWidget   需要修改数据的的部件
    MaterialApp:代表使用纸墨设计（Material Design）风格的应用。里面包含了纸墨设计风格应用所需要的基本控件
    样式设置 在 Widget的style中 

