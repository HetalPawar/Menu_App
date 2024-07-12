import 'package:flutter/material.dart';
import 'package:menu_app/homepage/checkout.dart';
import 'package:menu_app/items/food.dart';
import 'package:menu_app/items/itemWithCounter.dart';
import '../items/item.dart';


class homepage extends StatelessWidget{
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
        imagePath: "foodimages/norththali.jpg",
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
        imagePath: "foodimages/paratha.jpg",
        rating: "4.8")
  ];

  homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[200],
        foregroundColor: Colors.redAccent[200],
        centerTitle: true,
        elevation: 100.0,
        title: const Text('Maruti Restaurants', style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        scrolledUnderElevation: 50.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_bag_rounded),
            tooltip: 'Checkout with items',
            color: Colors.white,
            onPressed: () {
              //ScaffoldMessenger.of(context).showSnackBar(
              //  const SnackBar(content: Text('Items added'))
              //)
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return checkoutpage();
                    },
                  )
              );
            },
          ),
        ],
      ),


      body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            const SizedBox(height: 30,),

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

            const SizedBox(height: 15,),


            //scroller
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                    food: foodMenu[index]
                ),
              ),
                  ),
          ],
        )
    );
  }
}