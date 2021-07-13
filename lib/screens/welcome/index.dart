import 'package:flutter/material.dart';
import 'package:mobile/widgets/layouts/empty_layout.dart';
import 'package:mobile/utils/routes.dart';
import 'package:mobile/utils/translation.dart';
import 'package:mobile/widgets/buttons/app_outline_button_only_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return EmptyLayout(
        appBar: AppBar(
          title: Text(Translation.text(context).welcome),
          centerTitle: true,
        ),
        child: Column(
          children: [

            SizedBox(height: 30),
            Container(
              height: 200,
              width: 200,
              color: Colors.black87,
            ),
            SizedBox(height: 30),

            AppOutlineButtonOnlyText(
              color: Colors.blueGrey,
              text: Translation.text(context).register,
              onPressed: () => Navigator.pushNamed(context, URL_EVENTS),
              isUppercase: true,
            ),

            SizedBox(height: 30),
            AppOutlineButtonOnlyText(
              color: Colors.blueGrey,
              text: Translation.text(context).login,
              onPressed: () => Navigator.pushNamed(context, URL_HOME),
              isUppercase: true,
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
                IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
                IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              ],
            ),
            Text(Translation.text(context).useSMAccountToRegister),
          ],
        ));
  }
}
