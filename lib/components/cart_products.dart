import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Heels",
      "picture": "images/products/hills1.jpeg",
      "price": 300,
      "size": "5",
      "color": "Maroon",
      "quantity": 1,
    },
    {
      "name": "Mac Computer",
      "picture": "images/products/mac.jpeg",
      "price": 200,
      "size": "20 inch",
      "color": "Grey",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_products(
            cart_product_name: Products_on_the_cart[index]["name"],
            cart_product_color: Products_on_the_cart[index]["color"],
            cart_product_quantity: Products_on_the_cart[index]["quantity"],
            cart_product_size: Products_on_the_cart[index]["size"],
            cart_product_price: Products_on_the_cart[index]["price"],
            cart_product_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_products extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  Single_cart_products({
    this.cart_product_name,
    this.cart_product_color,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_quantity,
    this.cart_product_size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
  // ====== Leading Section =========
        leading: new Image.asset(cart_product_picture, width: 80.0, height: 80.0,),
  // ====== Title Section --===========
        title: new Text(cart_product_name),
        subtitle: new Column(
          children: <Widget>[
            // Row inside a column.
            new Row(
              children: <Widget>[
                //      size of the product session
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Text(
                    cart_product_size,
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
                // =============product color section=========
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                  child: new Text("Color"),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: new Text(
                    cart_product_color,
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ],
            ),

//       ===== Product Price section =======
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_product_price}",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("$cart_product_quantity"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
      ),

    );
  }


}
