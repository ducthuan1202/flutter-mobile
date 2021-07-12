import 'package:flutter/material.dart';
import 'package:mobile/utils/main_layout.dart';
import 'package:mobile/utils/routes.dart';
import 'package:mobile/widgets/countries_list/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Home'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home',
              style: Theme.of(context).textTheme.headline4,
            ),
            CountriesList(),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, URL_EVENTS);
            }, child: Text('Go to Events Screen'))
          ],
        ),
      ),
      floatButton: FloatingActionButton(
        onPressed: (){
          print('Home');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
