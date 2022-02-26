import 'package:flutter/material.dart';
import 'package:store_app/data.dart';

class Cart_widget extends StatelessWidget {
  const Cart_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cart_item.length,
                itemBuilder: ((context, index) => carttt(
                    cart_item[index]["image"],
                    cart_item[index]["name"],
                    cart_item[index]["price"],
                    cart_item[index]["quantity"]))),
          ],
        ),
      ),
    );
  }
}

Widget carttt(iiimage, nnname, ppprise, qqquantity) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            margin: EdgeInsets.all(18),
            height: 150,
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                iiimage,
                fit: BoxFit.cover,
              ),
            )),
        Column(
          children: [
            Text(nnname),
            Text("M"),
            Text(ppprise),
            SizedBox(
              height: 50,
            )
          ],
        ),
        Container(
            height: 35,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(186, 0, 0, 0)),
            child: Center(
              child: IconButton(
                  onPressed: () {
                    if (qqquantity > 1) {
                      (qqquantity--);
                    }
                  },
                  icon: Icon(
                    Icons.remove,
                    size: 20,
                    color: Colors.white,
                  )),
            )),
        Container(
          height: 35,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border:
                  Border.all(color: Color.fromARGB(186, 0, 0, 0), width: 4)),
          child: Center(child: Text("$qqquantity")),
        ),
        Container(
          height: 35,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(186, 0, 0, 0)),
          child: IconButton(
            onPressed: () {
              qqquantity++;
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            iconSize: 20,
          ),
          // color: Colors.white
        )
      ],
    ),
  );
}
