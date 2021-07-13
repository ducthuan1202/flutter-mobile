import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/graphql/queries/countries.dart';

class CountriesList extends StatefulWidget {
  const CountriesList({Key? key}) : super(key: key);

  @override
  _CountriesListState createState() => _CountriesListState();
}

class _CountriesListState extends State<CountriesList> {
  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            document: gql(countriesQuery),
            variables: {},
            pollInterval: Duration(seconds: 10),
        ),
        builder: (QueryResult result, {Refetch? refetch, FetchMore? fetchMore}) {
          // has error
          if (result.hasException) {
            return Text(
              result.exception.toString(),
              style: Theme.of(context).textTheme.headline4,
            );
          }

          // show loading
          if (result.isLoading) {
            return SizedBox(
              height: 40.0,
              width: double.infinity,
              child: Container(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(),
              ),
            );
          }

          // check has data
          List data = result.data?['countries'];
          if (data.isEmpty) {
            return Text(
              'data empty',
              style: Theme.of(context).textTheme.headline4,
            );
          }

          // render list view
          return Container(
            height: 500.0,
            child: ListView.separated(
              itemCount: data.length,
              itemBuilder: (context, index) => ListTile(
                leading: Text(data[index]?['code'] ?? '--'),
                title: Text(data[index]?['name'] ?? 'n/'),
              ),
              separatorBuilder: (context, index) => Divider(),
            ),
          );
        });
  }
}
