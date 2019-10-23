import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:testcomm/components/horizontal_listview.dart';
import 'package:testcomm/components/products.dart';

void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imagecarousel = new Container(
      height: 200.0,
      child: new Carousel(
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
          AssetImage("images/w4.jpeg"),
        ],
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
        autoplay: false,
        boxFit: BoxFit.cover,
        animationDuration: Duration(milliseconds: 1000),
        animationCurve: Curves.elasticIn,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},)
        ],
        title: new Text("Crocco Wears", textAlign: TextAlign.justify, ),

      ),

      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(accountName: new Text("Cubic MSL"), accountEmail: new Text("cubic@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: new Icon(Icons.person),
                ),

              decoration: BoxDecoration(color: Colors.pink),),

              //body

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text("Home"),
                  leading: new Icon(Icons.home, color: Colors.indigoAccent),
                ),
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text("My Account"),
                  leading: new Icon(Icons.person, color: Colors.indigoAccent),
                ),
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text("My Orders"),
                  leading: new Icon(Icons.shopping_basket, color: Colors.indigoAccent),
                ),
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text("Category"),
                  leading: new Icon(Icons.dashboard, color: Colors.indigoAccent),
                ),
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text("Favourites"),
                  leading: new Icon(Icons.favorite, color: Colors.indigoAccent),
                ),
              ),

              Divider(),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text("Setting"),
                  leading: new Icon(Icons.settings, color: Colors.indigoAccent),
                ),
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text("About"),
                  leading: new Icon(Icons.help, color: Colors.indigoAccent),
                ),
              ),
            ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          imagecarousel,
          new Padding(padding: EdgeInsets.all(8.0),
          child: new Text("Categories", style: TextStyle(fontSize: 18.0),),),

          //Horizontal List view begins here
         HorizontalList(),

          new Padding(padding: EdgeInsets.all(10.0),
            child: new Text("Recent Products", style: TextStyle(fontSize: 16.0),),),

          //Recent Products view
          new Container(
            height: 320,
            child: new Products(),
          ),

          new Padding(padding: EdgeInsets.all(15.0), ),






        ],
      ),
    );
  }
}


