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
import 'material_componets/simple_dialog_demo.dart';
import 'material_componets/alert_dialog_demo.dart';
import 'material_componets/bottom_sheet_demo.dart';
import 'material_componets/snack_bar_demo.dart';
import 'material_componets/expansion_panel_demo.dart';
import 'material_componets/chip_demo.dart';
import 'material_componets/data_table_demo.dart';
import 'material_componets/paginated_data_table_demo.dart';
import 'material_componets/card_demo.dart';
import 'material_componets/stepper_demo.dart';

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
            ListItem(title: 'Stepper', page: StepperDemo()),
            ListItem(title: 'Card', page: CardDemo()),
            ListItem(
                title: 'PaginatedDataTable', page: PaginatedDataTableDemo()),
            ListItem(title: 'DataTable', page: DataTableDemo()),
            ListItem(title: 'Chip', page: ChipDemo()),
            ListItem(title: 'ExpansionPanel', page: ExpansionPanelDemo()),
            ListItem(title: 'SnackBar', page: SnackBarDemo()),
            ListItem(title: 'BottomSheet', page: BottomSheetDemo()),
            ListItem(title: 'AlertDialog', page: AlertDialogDemo()),
            ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
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
