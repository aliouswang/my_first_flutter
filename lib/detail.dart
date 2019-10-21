import 'package:flutter/material.dart';
import 'entity.dart';

class ProductDetailPage extends StatelessWidget {

  final Product product;

  ProductDetailPage({Key key, @required this.product}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product detail'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(onPressed: (){Navigator.pop(context, "${product.name} from detail!");}, child: Text('${product.name}'),),
          Text(this.product.desc),
          Image.asset('images/doctor.png'),
        ],
      ),
    );
  }

}