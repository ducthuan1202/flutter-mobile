import 'package:flutter/material.dart';
import 'package:mobile/utils/main_layout.dart';
import 'package:mobile/utils/routes.dart';
import 'package:mobile/utils/translation.dart';
import 'package:mobile/widgets/countries_list/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String txt = Translation.text(context).tooltipMenuHome;

    return MainLayout(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(txt),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20,),
            CountriesList(),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, URL_EVENTS);
            }, child: Text('Go to Events Screen')),
            SizedBox(height: 20,),
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
