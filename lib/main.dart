import 'package:flutter/material.dart';
import 'widgets.dart';
import 'entity.dart';
import 'play/count_model.dart';
import 'package:redux/redux.dart';
import 'play/reducer.dart';

// todo:
//https://www.jianshu.com/p/990f503f1822

void main() {
  final store = Store<CountedModel>(reducer, initialState: CountedModel.initState());
  runApp(MaterialApp(title: 'Main page', home: MainPage()));
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main page'),
      ),
      body: ListWidget(products: List<Product>.generate(30, (index) => Product("name$index", "desc$index")))
    );
  }
}

