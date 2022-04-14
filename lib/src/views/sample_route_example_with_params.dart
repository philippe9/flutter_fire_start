import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire_starter/src/models/template_model.dart';
import 'package:flutter_fire_starter/src/routes/RoutePaths.dart';

class ExampleScreenWithParams extends StatelessWidget {
  final Model data;
  String title;
  // ignore: use_key_in_widget_constructors
  ExampleScreenWithParams({required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        ElevatedButton(
          child: Text('Ex Route'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, RoutePaths.Home);
          },
        ),
        Center(child: Text(data.description))
      ],
    ));
  }
}
