import 'package:flutter/material.dart';

// StatelessWidget无状态 数据不可改变
// StatefulWidget 本身不可改变数据 小部件要改变的需要单独放State对象中
class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  void _increaseCount() {
    setState(() {
      _count += 1;
    });
    print(_count);
  }

  @override
//build 构建用户界面
  Widget build(BuildContext context) {
    //Scaffold 提供基本页面结构
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: Counter(_count, _increaseCount),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increaseCount,
      ),
    );
  }
}

// count 由父辈传递过来
class Counter extends StatelessWidget {
  final int count;
  // 传递回调用
  final VoidCallback increaseCount;

  Counter(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        label: Text('$count'),
        onPressed: increaseCount,
      ),
    );
  }
}
