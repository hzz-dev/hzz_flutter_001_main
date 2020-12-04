// import 'package:flutter/material.dart';
// import 'package:scoped_model/scoped_model.dart';

// // StatelessWidget无状态 数据不可改变
// // StatefulWidget 本身不可改变数据 小部件要改变的需要单独放State对象中
// class StateManagementDemo extends StatefulWidget {
//   @override
//   _StateManagementDemoState createState() => _StateManagementDemoState();
// }

// class _StateManagementDemoState extends State<StateManagementDemo> {
//   int _count = 0;

//   void _increaseCount() {
//     setState(() {
//       _count += 1;
//     });
//     print(_count);
//   }

//   @override
// //build 构建用户界面
//   Widget build(BuildContext context) {
//     //Scaffold 提供基本页面结构
//     // CounterProvider 中间层
//     return CounterProvider(
//       count: _count,
//       increaseCount: _increaseCount,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('StateManagementDemo'),
//           elevation: 0.0,
//         ),
//         body: CounterWrapper(),
//         // CounterWrapper(_count, _increaseCount),
//         // Counter(_count, _increaseCount),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: _increaseCount,
//         ),
//       ),
//     );
//   }
// }

// // class _StateManagementDemoState extends State<StateManagementDemo> {
// //   int _count = 0;

// //   void _increaseCount() {
// //     setState(() {
// //       _count += 1;
// //     });
// //     print(_count);
// //   }

// //   @override
// // //build 构建用户界面
// //   Widget build(BuildContext context) {
// //     //Scaffold 提供基本页面结构
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('StateManagementDemo'),
// //         elevation: 0.0,
// //       ),
// //       body: CounterWrapper(_count, _increaseCount),
// //       // Counter(_count, _increaseCount),
// //       floatingActionButton: FloatingActionButton(
// //         child: Icon(Icons.add),
// //         onPressed: _increaseCount,
// //       ),
// //     );
// //   }
// // }

// // // 中间转换数据层 类似模型层
// // // App传递数据-->StateManagementDemo-->CounterWrapper-->Counter
// // class CounterWrapper extends StatelessWidget {
// //   final int count;
// //   // 传递回调用
// //   final VoidCallback increaseCount;

// //   CounterWrapper(this.count, this.increaseCount);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: Counter(count, increaseCount),
// //     );
// //   }
// // }

// class CounterWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Counter(),
//     );
//   }
// }

// // // count 由父辈传递过来
// // class Counter extends StatelessWidget {
// //   final int count;
// //   // 传递回调用
// //   final VoidCallback increaseCount;

// //   Counter(this.count, this.increaseCount);

// //   @override
// //   Widget build(BuildContext context) {
// //     return ActionChip(
// //       label: Text('$count'),
// //       onPressed: increaseCount,
// //     );
// //   }
// // }

// // count 由父辈传递过来
// class Counter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final int count = CounterProvider.of(context).count;
//     // 传递回调用
//     final VoidCallback increaseCount =
//         CounterProvider.of(context).increaseCount;
//     return ActionChip(
//       label: Text('$count'),
//       onPressed: increaseCount,
//     );
//   }
// }

// // InheritedWidget直接把数据传递给Counter
// class CounterProvider extends InheritedWidget {
//   final int count;
//   // 传递回调用
//   final VoidCallback increaseCount;
//   final Widget child;

//   CounterProvider({this.count, this.increaseCount, this.child})
//       : super(child: child);

//   // 得到CounterProvider中的数据this.count, this.increaseCount
//   // 定义方法名字 of
//   static CounterProvider of(BuildContext context) =>
//       context.inheritFromWidgetOfExactType(CounterProvider);

// // 决定是否通知继承这个组件的组件
//   @override
//   bool updateShouldNotify(InheritedWidget oldWidget) {
//     // TODO: implement updateShouldNotify
//     return true;
//   }
// }

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateManagementDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.increaseCount,
          ),
        ),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
        label: Text('${model.count}'),
        onPressed: model.increaseCount,
      ),
    );
  }
}

// scoped_model传递数据
class CounterModel extends Model {
  int _count = 0;
  int get count => _count;

  void increaseCount() {
    _count += 1;
    // 监听组件数据的变化 变化后会重建
    notifyListeners();
  }
}
