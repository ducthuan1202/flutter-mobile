import 'package:flutter/material.dart';
import 'package:mobile/utils/main_layout.dart';
import 'package:mobile/utils/routes.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Events'),
        actions: [
          IconButton(onPressed: () => print('share'), icon: Icon(Icons.share_outlined)),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Events',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, URL_CONTACTS);
            }, child: Text('Go to Contact Screen'))
          ],
        ),
      ),
      floatButton: FloatingActionButton(
        onPressed: (){
          print('Events');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
