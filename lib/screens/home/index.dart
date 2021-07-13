import 'package:flutter/material.dart';
import 'package:mobile/widgets/layouts/main_layout.dart';
import 'package:mobile/utils/translation.dart';
import 'countries_list/index.dart';

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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('GraphQL Query',style: Theme.of(context).textTheme.headline4,),
            SizedBox(height: 20,),
            CountriesList(),
            SizedBox(height: 20,),
          ],
        ),
      ),
      floatButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
