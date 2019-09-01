import 'package:flutter/material.dart';

//my imports
import 'package:bizz_app/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: new Text('cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
     body: new Cart_products(),

     bottomNavigationBar: new Container(
       color: Colors.white,
       child: Row(
         children: <Widget>[
           Expanded(child: ListTile(
             title: new Text("Total:"),
             subtitle: new Text("\$120"),
           ),),

           Expanded(
             child: new MaterialButton(onPressed: (){},
             child: new Text("Check out", style: TextStyle(color: Colors.white70),),
             color: Colors.redAccent,),
           )
         ],
       ),
     ),
    );
  }
}
