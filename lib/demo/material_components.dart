import 'package:flutter/material.dart';
import 'material_componets/floating_action_button_demo.dart';
import 'material_componets/button_demo.dart';
import 'material_componets/popup_menu_button_demo.dart';
import 'from_demo.dart';
import 'material_componets/checkbox_demo.dart';
import 'material_componets/radio_demo.dart';
import 'material_componets/switch_demo.dart';
import 'material_componets/slider_demo.dart';
import 'material_componets/datetime_demo.dart';

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
            ListItem(title: 'Date & Time', page: DateTimeDemo()),
            ListItem(title: 'Slider', page: SliderDemo()),
            ListItem(title: 'Switch', page: SwitchDemo()),
            ListItem(title: 'Radio', page: RadioDemo()),
            ListItem(title: 'Checkbox', page: CheckboxDemo()),
            ListItem(title: 'Form', page: FormDemo()),
            ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
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
