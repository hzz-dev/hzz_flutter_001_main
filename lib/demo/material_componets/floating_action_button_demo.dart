import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0)
      // ),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      // 漂浮按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 将漂浮按钮放到bottomNavigationBar上
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        // 漂浮按钮重叠部分缺口
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
