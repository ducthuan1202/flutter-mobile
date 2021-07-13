import 'package:flutter/material.dart';
import 'package:mobile/utils/main_layout.dart';
import 'package:mobile/utils/routes.dart';
import 'package:mobile/utils/translation.dart';
import 'package:mobile/widgets/buttons/app_button_only_text.dart';
import 'package:mobile/widgets/buttons/app_icon_button_shadow.dart';
import 'package:mobile/widgets/buttons/app_outline_button_only_text.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String txt = Translation.text(context).tooltipMenuEvents;

    return MainLayout(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(txt),
        actions: [
          IconButton(onPressed: () => print('share'), icon: Icon(Icons.share_outlined)),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: Theme.of(context).textTheme.headline4,
            ),
            AppOutlineButtonOnlyText(color: Colors.blue, text: 'Button'),

            SizedBox(height: 10,),
            AppButtonOnlyText(
                backgroundColor: Colors.indigoAccent,
                text: 'Yes - No',
                onPressed: () {},
            ),
            SizedBox(height: 10,),

            AppIconButtonShadow(
              icon: Icon(Icons.camera_alt_outlined),
              color: Colors.red,
              onPressed: () => print('ok'),
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, URL_CONTACTS);
            }, child: Text('Go to Contact Screen'))
          ],
        ),
      ),
      floatButton: FloatingActionButton(
        onPressed: (){
          print(txt);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
