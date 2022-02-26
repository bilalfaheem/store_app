import 'package:flutter/material.dart';
import 'package:store_app/data.dart';

class favourite extends StatefulWidget {
  const favourite({Key? key}) : super(key: key);

  @override
  _favouriteState createState() => _favouriteState();
}

bool is_fav = false;

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) => (Container(
        // color: Colors.blue,
        height: 40,
        child: Expanded(
          child: IconButton(
              alignment: Alignment.topCenter,
              iconSize: 30,
              onPressed: () {
                setState(() {
                  if (is_fav == false) {
                    (is_fav = true);
                  } else if (is_fav == true) {
                    (is_fav = false);
                  }
                });
              },
              icon: Icon(
                is_fav ? Icons.favorite : Icons.favorite_border,
                color: is_fav ? Colors.red : null,
              )),
        ),
      ));
}
