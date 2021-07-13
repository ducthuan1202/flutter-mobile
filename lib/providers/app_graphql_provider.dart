import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class AppGraphQLProvider extends StatelessWidget {
  final Widget child;

  const AppGraphQLProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final String graphURl = dotenv.env['APP_GRAPHQL_ENDPOINT'].toString();

    WidgetsFlutterBinding.ensureInitialized();

    final HttpLink httpLink = HttpLink(graphURl);

    ValueNotifier<GraphQLClient> client = ValueNotifier(
        GraphQLClient(
          cache: GraphQLCache(store: InMemoryStore()),
          link: httpLink,
        )
    );

    return GraphQLProvider(
      client: client,
      child: child,
    );
  }
}