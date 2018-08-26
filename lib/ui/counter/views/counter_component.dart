import 'package:flutter/material.dart';
import 'package:mvp_flutter_tutorial/ui/counter/presenter/counter_presenter.dart';
import 'package:mvp_flutter_tutorial/ui/counter/viewmodel/counter_viewmodel.dart';
import 'package:mvp_flutter_tutorial/ui/counter/views/counter_view.dart';


class MyHomePage extends StatefulWidget {
    final CounterPresenter presenter;

    MyHomePage(this.presenter, {Key key, this.title}) : super(key: key);

    final String title;

    @override
    _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements CounterView {

    CounterViewModel _viewModel;

    @override
    void initState() {
        super.initState();
        this.widget.presenter.counterView = this;
    }

    @override
    void refreshCounter(CounterViewModel viewModel) {
        setState(() {
            this._viewModel = viewModel;
        });
    }

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text(widget.title),
            ),
            body: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        new Text(
                            'You have pushed the button this many times:',
                        ),
                        new Text(
                            _viewModel?.counter.toString(),
                            style: Theme.of(context).textTheme.display1,
                        ),
                    ],
                ),
            ),
            floatingActionButton: new FloatingActionButton(
                onPressed: () => this.widget.presenter.onButton1Clicked(),
                tooltip: 'Increment',
                child: new Icon(Icons.add),
            ),
        );
    }
}