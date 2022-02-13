import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:store_app/widgets/cart_widget.dart';

class Feed_widget extends StatelessWidget {
  const Feed_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        pinned: false,
        snap: true,
        floating: true,
        title: Text("\$tore"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cart_widget()));
              },
              icon: FaIcon(Icons.shopping_cart))
        ],
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate(
        (context, index) => Container(
          child: Text("data"),
        ),
        childCount: 100,
      ))
    ]);
  }
}
