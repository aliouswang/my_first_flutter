import 'package:flutter/material.dart';
import 'entity.dart';
import 'detail.dart';

class ListWidget extends StatelessWidget {

  final List<Product> products;

  ListWidget({Key key, @required this.products}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Text("$index => ${products[index].name}"),
        onTap: () {
//          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(product: products[index])));
            gotoDetail(context, products[index]);
        },
      );
    }, itemCount: products.length,);
  }

  void gotoDetail(BuildContext context, Product product) async{
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(product: product)));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('result:$result')));
  }

}