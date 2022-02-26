import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:store_app/data.dart';
import 'package:store_app/widgets/cart_widget.dart';
import 'package:store_app/widgets/item_detail_widget.dart';
import 'package:store_app/widgets/popular_item_widget.dart';

double hori = 18; // horizontal margin
double vert = 9; //vertical margin

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
              (context, index) => buildBody(context),
              childCount: 1))
    ]);
  }
}

// var pop = populars[index];
Widget buildBody(context) {
  var h = 0.5; // height

  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      margin: EdgeInsets.symmetric(horizontal: hori, vertical: vert),
      child: Text(
        "Trending",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(horizontal: hori, vertical: vert),
      child: Container(
        // color: Colors.black,
        height: MediaQuery.of(context).size.height * h,
        child: ListView.builder(
            itemCount: populars.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    print("tap");
                    print(populars[index]);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Item_detail_widget(
                                context,
                                populars[index]["image"],
                                populars[index]["name"],
                                populars[index]["sizes"],
                                populars[index]["price"],
                                populars[index]["description"],
                                populars[index]["is_favorited"],
                                populars[index])));
                  },
                  child: Polpular_item_widget(context, populars[index]["image"],
                      populars[index]["price"], populars[index]["name"]),
                )),
      ),
    )
  ]);
}
