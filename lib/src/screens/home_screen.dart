import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.orange,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Tu Restaurante',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: <Widget>[
                        Icon(
                          Icons.notifications,
                          size: 35.0
                        ),
                        Positioned(
                          right: 0.1,
                          top: 0.0,
                          child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          minRadius: 10.0,
                          child: Text('3', style: TextStyle(color: Colors.white),)))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Hoy',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      'Ver mas',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.orange),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: foodDishesSlider(),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, right: 10.0, left: 40.0),
                child: foodCategoriesSlider(),
              )
            ],
          )),
        ));
  }

  Widget foodDishesSlider({BuildContext context}) {
    return CarouselSlider(autoPlay: true, items: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            height: 300,
            width: 400,
            child: Image.asset(
              'assets/images/dishes/dish-1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              right: 20.0,
              bottom: 20.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite, color: Colors.orange),
              ))
        ],
      ),
      Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            height: 300,
            width: 400,
            child: Image.asset(
              'assets/images/dishes/dish-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              right: 20.0,
              bottom: 20.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite, color: Colors.orange),
              ))
        ],
      ),
      Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            height: 300,
            width: 400,
            child: Image.asset(
              'assets/images/dishes/dish-3.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              right: 20.0,
              bottom: 20.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite, color: Colors.orange),
              ))
        ],
      ),
      Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            height: 300,
            width: 400,
            child: Image.asset(
              'assets/images/dishes/dish-4.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              right: 20.0,
              bottom: 20.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite, color: Colors.orange),
              ))
        ],
      ),
    ]);
  }

  Widget foodCategoriesSlider({BuildContext context}) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Categorias',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold))
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: CarouselSlider(
          height: 110.0,
          autoPlay: false,
          items: <Widget>[
            foodCategoriesCard('Bebidas', '10', Icons.local_cafe),
            foodCategoriesCard('Postres', '18', Icons.cake),
            foodCategoriesCard('Piqueos', '35', Icons.fastfood),
          ],
        ),
      )
    ]);
  }

  Widget foodCategoriesCard(String title, String count, IconData icon) {
    return Card(
      elevation: 2.0,
      child: Center(
        child: ListTile(
          leading: Container(
            child: Icon(
              icon,
              size: 35.0,
              color: Colors.orange,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
          subtitle: Text(
            '$count',
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}
