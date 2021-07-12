import 'package:flutter/material.dart';
import 'package:mobile/utils/main_layout.dart';
import 'package:mobile/utils/routes.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Contacts'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contacts',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, URL_SETTINGS);
            }, child: Text('Go to Settings Screen'))
          ],
        ),
      ),
      floatButton: FloatingActionButton(
        onPressed: (){
          print('Contacts');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
