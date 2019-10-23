import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_old_price;
  final product_detail_price;
  final product_detail_picture;

  ProductDetails({
                  @required this.product_detail_name,
                  @required this.product_detail_old_price,
                  @required this.product_detail_price,
                  @required this.product_detail_picture
                });


  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},)
        ],
        title: new Text(""),

      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.product_detail_picture,
                            ),
                         ),
                footer: new Container(
                  color: Colors.white70,
                  child: new ListTile(
                    leading: Text("${widget.product_detail_name}:",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),  ),

                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("\$${widget.product_detail_old_price}", style: TextStyle(color: Colors.grey,
                              decoration: TextDecoration.lineThrough, fontSize: 17.0 , ),
                          ),
                        ),

                        Expanded(
                          child: new Text("\$${widget.product_detail_price}", style: TextStyle(color: Colors.red,
                             fontSize: 17.0, fontWeight: FontWeight.bold),
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
            ),
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                       return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose the Size"),
                      actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: new Text("close"),)
                    ],
                       );
                  }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size", )),
                      Expanded(child: new Icon(Icons.arrow_drop_down, )),
                    ],
                  ),),
              ),

              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Color"),
                          content: new Text("Choose the Color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                              child: new Text("close"),)
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color", )),
                      Expanded(child: new Icon(Icons.arrow_drop_down, )),
                    ],
                  ),),
              ),

              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Choose the Quantity"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                              child: new Text("close"),)
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty", )),
                      Expanded(child: new Icon(Icons.arrow_drop_down, )),
                    ],
                  ),),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now", )
                    ),
                   ),

              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red), onPressed: null),
              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red), onPressed: null)
                ]
              ),

          Divider(),

          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy"),
          ),

          Divider(),
          Row(
            children: <Widget>[
              new Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product Name:", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              new Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),

          Row(
            children: <Widget>[
              new Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand:", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              new Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),

          Row(
            children: <Widget>[
              new Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition:", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              new Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),
          new Padding(padding: EdgeInsets.all(12.0),),


            ],
          ),
    );
  }
}
