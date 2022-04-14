import 'package:flutter/material.dart';
import 'package:flutter_fire_starter/src/routes/RoutePaths.dart';
import 'package:flutter_fire_starter/src/views/sample_route_example.dart';
import 'package:flutter_fire_starter/src/views/sample_view.dart';

import '../views/sample_route_example_with_params.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => const SampleView());

      case RoutePaths.ExampleScreen:
        // you can do things like pass arguments to screens
        // final event = settings.arguments as Event;
        return MaterialPageRoute(builder: (_) => ExampleScreen());
      case RoutePaths.ExampleWithParams:
        final args = settings.arguments as Map<String, dynamic>;

        return MaterialPageRoute(
            builder: (_) => ExampleScreenWithParams(
                  data: args['data'],
                  title: args['title'],
                ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
