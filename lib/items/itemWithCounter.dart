import 'package:flutter/material.dart';
import 'package:menu_app/items/food.dart';

var myColor = const Color.fromARGB(109, 140, 94, 91);

class FoodTile extends StatefulWidget {
  final Food food;

  const FoodTile({super.key, required this.food});

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  //quantity
  int quantityCount = 0;

  //decrement quantity
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  //increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //image
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              widget.food.imagePath,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20.0),
          //name, price and rating
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.food.name,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rs. ${widget.food.price}',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[800],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(
                          widget.food.rating,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                //add items
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //minus button
                    Container(
                      decoration: BoxDecoration(
                        color: myColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                        onPressed: decrementQuantity,
                      ),
                    ),
                    //quantity count
                    Container(
                      width: 40,
                      child: Center(
                        child: Text(
                          quantityCount.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    //plus button
                    Container(
                      decoration: BoxDecoration(
                        color: myColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: incrementQuantity,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
