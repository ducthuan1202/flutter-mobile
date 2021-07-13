import 'package:flutter/material.dart';
import 'package:mobile/widgets/layouts/main_layout.dart';
import 'package:mobile/utils/routes.dart';
import 'package:mobile/utils/translation.dart';
import 'package:mobile/widgets/buttons/app_button_only_text.dart';
import 'package:mobile/widgets/buttons/app_icon_button.dart';
import 'package:mobile/widgets/buttons/app_icon_button_shadow.dart';
import 'package:mobile/widgets/buttons/app_outline_button_only_text.dart';
import 'package:mobile/widgets/svg_icon/index.dart';
import 'package:mobile/widgets/text/roboto_text.dart';
import 'package:mobile/widgets/text/zenloop_text.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String txt = Translation.text(context).tooltipMenuEvents;

    return MainLayout(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(txt),
        actions: [
          IconButton(
            icon: Icon(Icons.share_outlined),
            onPressed: () {
              Navigator.pushNamed(context, URL_CONTACTS);
            },
          ),
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

            ZenLoopText(
              text: 'custom font',
              style: TextStyle(
                  fontSize: 33.0
              ),
            ),

            Center(
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  AppOutlineButtonOnlyText(
                    text: Translation.text(context).create,
                    onPressed: () {},
                  ),

                  SizedBox(width: 10, height: 10,),
                  AppButtonOnlyText(
                    backgroundColor: Colors.indigoAccent,
                    text: Translation.text(context).yes,
                    onPressed: () {},
                  ),

                  SizedBox(width: 10, height: 10,),
                  AppIconButtonShadow(
                    icon: Icon(Icons.camera_alt_outlined),
                    color: Colors.blueGrey,
                    onPressed: () {},
                  ),

                  SizedBox(width: 10, height: 10,),
                  AppIconButton(
                    icon: Icon(Icons.share_outlined),
                    color: Colors.blueGrey,
                    onPressed: (){},
                  ),

                  SizedBox(width: 10, height: 10,),
                  TextButton(onPressed: (){}, child: Text('ahihi')),

                  SizedBox(width: 10, height: 10,),
                  Chip(
                    label: Text('Demo', style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.blueGrey,
                  ),

                  SizedBox(width: 10, height: 10,),
                  SvgIcon(icon: 'home', color: Colors.blue, size: 50.0,),

                  SizedBox(width: 10, height: 10,),
                  SvgIcon(icon: 'home', color: Colors.red, size: 20.0,),

                  SizedBox(width: 10, height: 10,),
                  Image(
                    height: 50.0,
                    width: 50.0,
                    image: AssetImage('images/flutter_logo.jpeg'),
                  ),

                  SizedBox(width: 10, height: 10,),
                ],
              ),
            )

          ],
        ),
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
