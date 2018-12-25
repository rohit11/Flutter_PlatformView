import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

Widget build(context){
  return MaterialApp(
    home: Scaffold(
      appBar : AppBar(
        title: Text('Platform View'),
      ),
      body: Center(
          child: SizedBox(
            width: 380,
            height: 380,
            child: UiKitView(
              viewType: 'NativeView',
            ),
          ),
        ),
    ),
  );
}
}