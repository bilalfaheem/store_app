import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:store_app/data.dart';
import 'package:store_app/main.dart';
import 'package:store_app/widgets/favourite.dart';

var q = 1.obs;

Widget Item_detail_widget(
    context, iimage, nname, ssizes, pprize, ddetails, ffavourite, item) {
  var h = 0.5;
  var w = 0.95;

  return Scaffold(
    appBar: AppBar(),
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
//image

          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            child: Image.network(
              iimage,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * h,
              width: MediaQuery.of(context).size.width * w,
            ),
          ),

//product name

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              nname,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),

//product size

          Container(
            height: 30,
            // color: Colors.black,
            child: ListView.builder(
                itemCount: ssizes.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, iindex) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 6,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Text(ssizes[iindex],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(188, 0, 0, 0))),
                          )),
                    ))),
          ),

//quantity & price

          Container(
            // color: Colors.amber,
            margin: EdgeInsets.symmetric(vertical: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                item_count(),
                Text(
                  "$pprize",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
          ),

//Description

          Text(
            "Description",
            style: TextStyle(fontSize: 20),
          ),

//details
//
          Text(
            ddetails,
            style: TextStyle(fontSize: 17, color: Color.fromARGB(178, 5, 5, 5)),
          ),

//favourite
          Container(
            margin: EdgeInsets.only(top: 17),
            child: Row(
              children: [
                Container(
                  height: 40,
                  child: Expanded(
                      child: IconButton(
                          alignment: Alignment.topCenter,
                          iconSize: 30,
                          onPressed: () {
                            favourite_item.add(item);
                            // setState(() {
                            if (ffavourite == false) {
                              (item['is_favorited'] = true);
                              print(ffavourite);
                              print(item);
                            } else if (ffavourite == true) {
                              (item['is_favorited'] = false);
                              print(ffavourite);
                              print(item);
                            }
                          },
                          icon:
                              //  Obx(() =>
                              Icon(
                            ffavourite ? Icons.favorite : Icons.favorite_border,
                            color: ffavourite ? Colors.red : null,
                          ))),
                ),

//Add cart

                Expanded(child: Add_cart(context, item))
              ],
            ),
          )
        ],
      ),
    ),
  );
}

class item_count extends StatelessWidget {
  const item_count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.48,
      height: MediaQuery.of(context).size.height * 0.055,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: light_grey,
      ),
      child: Row(
        children: [
//Remove quantity

          CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: MediaQuery.of(context).size.height * 0.0275,
              child: IconButton(
                  onPressed: () {
                    if (q > 1) {
                      (q--);
                    }
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ))),

//Quantity

          Expanded(
              child: Center(
                  child: Obx(() => Text(
                        "$q",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )))),

//Add Quantity

          CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 20,
              child: IconButton(
                  onPressed: () {
                    q++;
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ))),
        ],
      ),
    );
  }
}

// bool is_Favourite = false.obs;

// class Add_to_cart extends StatelessWidget {
//   const Add_to_cart({Key? key}) : super(key: key);

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return Container(
//       child: Row(
//         children: [
//           GestureDetector(
//             child: Icon(
//               is_Favourite ? Icons.favorite : Icons.favorite_outline,
//               color: is_Favourite ? Colors.red : null,

//               // Obx(() => if (is_Favourite=="false") {
//               //   Icons.favorite,color:null

//               // } else if (is_Favourite=="true") {
//               //   Icons.favorite,Color(Colors.amber)
//               // })
//             ),
//             onTap: () {
//               if (is_Favourite == false) {
//                 is_Favourite = "true".obs;
//               } else if (is_Favourite == true) {
//                 is_Favourite = "false".obs;
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

Widget Add_cart(context, item) {
  return Container(
    // margin: EdgeInsets.fromLTRB(
    //     MediaQuery.of(context).size.width * 0.1,
    //     MediaQuery.of(context).size.height * 0.05,
    //     MediaQuery.of(context).size.width * 0.1,
    //     MediaQuery.of(context).size.height * 0.00),
    width: MediaQuery.of(context).size.width * 0.6,
    height: MediaQuery.of(context).size.height * 0.05,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromARGB(192, 0, 0, 0)),
    child: Expanded(
      child: TextButton(
          onPressed: () {
            // item["quantity"] = q;
            cart_item.add(item);
            cart_item[cart_item.length - 1]["quantity"] = q;
            print(cart_item);
            // print(item);
          },
          child: Text("Add To Cart",
              style: TextStyle(fontSize: 20, color: Colors.white)),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          )))),
    ),
  );
}
