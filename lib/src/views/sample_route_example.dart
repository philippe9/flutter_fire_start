import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire_starter/src/models/template_model.dart';
import 'package:flutter_fire_starter/src/routes/RoutePaths.dart';

class ExampleScreen extends StatelessWidget {
  // final String data;
  // ExampleScreen(this.data, );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        ElevatedButton(
          child: Text('Ex Route'),
          onPressed: () {
            Navigator.of(context).pushNamed(RoutePaths.Home);
          },
        ),
        ElevatedButton(
          child: Text('Ex Params page'),
          onPressed: () {
            // Navigator.of(context).pushNamed(RoutePaths.ExampleWithParams,
            //     arguments: new Map<String,dynamic>(){
            //       data: const Model(description: 'Ma super page'),
            //       title: 'Mon titre ultime'
            //     });
            Map<String, dynamic> routeData = new Map<String, dynamic>();
            routeData['data'] = const Model(description: 'Ma super page');
            routeData['title'] = 'Mon titre ultime';
            Navigator.of(context)
                .pushNamed(RoutePaths.ExampleWithParams, arguments: routeData);
          },
        ),
        Center(child: Text('Example')),
      ],
    ));
  }
}
