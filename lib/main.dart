import 'package:flutter/material.dart';
import 'package:mvp_flutter_tutorial/ui/counter/presenter/counter_presenter.dart';
import 'package:mvp_flutter_tutorial/ui/counter/views/counter_component.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(new BasicCounterPresenter(), title: 'Flutter Demo Home Page'),
    );
  }
}


