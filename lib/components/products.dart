import 'package:flutter/material.dart';
import 'package:testcomm/components/details_page.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {


  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "120",
      "price": "85",
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": "100",
      "price": "85",
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": "30",
      "price": "14",
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": "120",
      "price": "85",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 2, ),
      itemBuilder: (BuildContext context, int index){
        return Single_Prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}


class Single_Prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_Prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Hero(tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_old_price: prod_old_price,
                  product_detail_price: prod_price,
                  product_detail_picture: prod_picture,
                ) ));
              },
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                    child: ListTile(
                      leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),),
                      title: new Text("\$${prod_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                      subtitle: new Text("\$${prod_old_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.lineThrough),),
                    ),
                ),
                child: Image.asset(prod_picture,
                  width: 100.0, height: 80.0,
                fit: BoxFit.cover,),

              ),
            ),
          )),
    );
  }
}

