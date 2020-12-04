import 'package:flutter/material.dart';
import 'material_componets/floating_action_button_demo.dart';
import 'material_componets/button_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MaterialComponents'),
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            ListItem(title: 'Button', page: ButtonDemo()),
            ListItem(
                title: 'FloatingActionButton',
                page: FloatingActionButtonDemo()),
          ],
        ));
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
