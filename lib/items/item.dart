import 'package:flutter/material.dart';
import 'package:menu_app/items/food.dart';

class MyItem extends StatelessWidget {
  final Food food;
  const MyItem({
    super.key,
    required this.food
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Image.asset(
            food.imagePath,
            height: 140.0,
          ),

          //name
          Column(
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  food.name,
                  style: TextStyle( fontSize: 25.0, fontWeight: FontWeight.w300 ),
                  softWrap: true,
                ),
              ),

              //price + rating
              SizedBox(
                width: 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //price
                      Text('Rs.' + food.price, style: TextStyle(fontSize: 20.0),),

                      //star icon + rating
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          Text(
                            food.rating,
                            style: TextStyle(color: Colors.grey[600], fontSize: 20.0),
                          ),
                        ],
                      )
                    ],
                  ),
              ),

              //add items

              //plus button
              //quantity
              //minus button

            ],
          ),
        ],
      )
    );
  }
}



