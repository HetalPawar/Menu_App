import 'package:flutter/material.dart';
import 'package:menu_app/homepage/checkout.dart';
import 'package:menu_app/items/food.dart';
import 'package:menu_app/items/itemWithCounter.dart';
import '../items/item.dart';

class homepagewc extends StatefulWidget {
  homepagewc({super.key});

  @override
  State<homepagewc> createState() => _homepageState();
}

class _homepageState extends State<homepagewc> {
  //food menu
  List foodMenu = [
    //norththali
    Food(
        name: "North Indian Veg Thali ",
        price: "400",
        imagePath: "foodimages/norththali.jpg",
        rating: "4.5"),

    //souththali
    Food(
        name: "South Indian Veg Thali ",
        price: "400",
        imagePath: "foodimages/souththali.jpg",
        rating: "4.5"),

    //nonvegthali
    Food(
        name: "Chicken Thali",
        price: "600",
        imagePath: "foodimages/nonvegthali.jpg",
        rating: "4.3"),

    //dosa
    Food(
        name: "Masala Dosa Thali",
        price: "300",
        imagePath: "foodimages/dosa.jpg",
        rating: "4.9"),

    //plain dosa
    Food(
        name: "Plain Dosa Thali",
        price: "250",
        imagePath: "foodimages/dosa.jpg",
        rating: "4.9"),

    //paratha
    Food(
        name: "Aloo Paratha Thali",
        price: "350",
        imagePath: "foodimages/aaloparatha.png",
        rating: "4.8"),
    //paratha
    Food(
        name: "Meethi Paratha Thali",
        price: "350",
        imagePath: "foodimages/meethiparatha.png",
        rating: "4.8")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      //app bar
        appBar: AppBar(
          backgroundColor: Colors.redAccent[200],
          foregroundColor: Colors.grey[800],
          centerTitle: true,
          elevation: 100.0,
          leading: Icon(Icons.menu,),
          title: const Text(
            'Maruti Restaurants',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          scrolledUnderElevation: 50.0,
          actions: [
            //cart button
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cartpage');
              },
              icon: const Icon(Icons.shopping_cart),
            )
          ]
        ),

        //page
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),

            //food menu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Food Menu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 28,
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            //scroller
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (context, index) =>
                    FoodTile(food: foodMenu[index]),
              ),
            ),
          ],
        ));
  }
}
