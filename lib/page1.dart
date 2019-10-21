import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';


class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Page1State();

}

class _Page1State extends State<Page1> with WidgetsBindingObserver {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var text = "TODO: implement didChangeDependenciesTODO: implement didChangeDependenciesTODO: implement didChangeDependencies";
    var imageUrl = "http://via.placeholder.com/750x350";
    var imageUrl2 = "https://pics3.baidu.com/feed/faf2b2119313b07e1a3b08cfa67bee2695dd8ca1.jpeg?token=18e4f37407cc999083c37a0f52359039&s=85B873953005FD0F8550CCC8030020B3";
    TextStyle redStyle = TextStyle(fontWeight: FontWeight.normal, color: Colors.red);
    TextStyle greenStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green);
    return Scaffold(
      appBar: AppBar(title: Text("Lifecycle demo")),
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('custom scrollview demo'),
              floating: true,
              flexibleSpace: Image.network(imageUrl2),
              expandedHeight: 200,
              pinned: true,
              snap: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text("item: $index"),),
                childCount: 100
              ),
            )
          ],
        )
      ),
    );
  }

  @override
  void didUpdateWidget(Page1 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
  }

}