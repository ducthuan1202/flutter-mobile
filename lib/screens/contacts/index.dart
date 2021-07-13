import 'package:flutter/material.dart';
import 'package:mobile/widgets/layouts/main_layout.dart';
import 'package:mobile/utils/routes.dart';
import 'package:mobile/utils/translation.dart';
import 'package:mobile/widgets/radial_menu/index.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String txt = Translation.text(context).tooltipMenuShare;
    return MainLayout(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(txt),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: RadialMenu()),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, URL_SETTINGS);
            },
            child: Text('Go to Settings Screen'),
          ),
        ],
      ),
      floatButton: FloatingActionButton(
        onPressed: () {
          print(txt);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
