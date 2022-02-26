import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/main.dart';

Widget Polpular_item_widget(context, pop_image, pop_price, pop_name) {
  var h = 0.5; // height
  var w = 0.7; //width
  return Container(
      margin: EdgeInsets.only(right: 18),
      height: MediaQuery.of(context).size.height * h,
      width: MediaQuery.of(context).size.width * w,
      // height: 100,
      // width: 60,
      decoration: BoxDecoration(
          border: Border.all(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              child: Image.network(
                pop_image,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * h,
                width: MediaQuery.of(context).size.width * w,
              ),
            ),
          ),
          Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * h,
                width: MediaQuery.of(context).size.width * w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.white.withOpacity(0.01)
                        ])),
              )),
          Positioned(
            bottom: 0,
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.4,
              // width: MediaQuery.of(context).size.width * 0.6,
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      pop_name,
                      style: Theme.of(context).textTheme.labelMedium,
                      // textAlign: TextAlign.left,
                    ),
                  ),
                  // Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/icons/price_icon.png",
                          fit: BoxFit.cover,
                          width: 20,
                          height: 20,
                          color: white,
                        ),
                      ),
                      Text(
                        pop_price,
                        style: Theme.of(context).textTheme.subtitle1,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ));
}
