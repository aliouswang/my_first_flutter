import 'package:flutter/material.dart';
import 'widgets.dart';
import 'entity.dart';

void main() => runApp(MaterialApp(title: 'Main page', home: MainPage()));

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

