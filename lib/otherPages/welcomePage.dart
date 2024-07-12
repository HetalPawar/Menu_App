import 'package:flutter/material.dart';
import 'package:menu_app/items/button.dart';

var myColor = const Color.fromARGB(109, 140, 94, 91);
class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      //appbar
      appBar: AppBar(
        title: Text("Welcome"),
        elevation: 0,
        backgroundColor: Colors.redAccent[200],
        foregroundColor: Colors.grey[900],
      ),

      //body
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            const SizedBox(
              height: 25.0,
            ),

            //shopname
            Text("Maruti Restaurants",
            style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            ),

            const SizedBox( height: 25.0, ),

            //image
            Image.asset("foodimages/welcome.png"),
            const SizedBox( height: 25.0, ),

            //title
            Text("THE TASTE OF INDIAN CUSINE",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            const SizedBox( height: 25.0, ),

            //subtitle
            Text(
            "Feel the taste of a variety of Indian delicacies and aromas anytime. No one leave with a stomach half full!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[300],
                height: 2,
              ),
            ),
            const SizedBox( height: 25.0, ),

            //get started button
            MyButton(
              text: "Get Started", 
              onTap: () {
                //go to homepgae
                Navigator.pushNamed(context, "/homepagewc");
              },
            ),
          ],
        ),
      ),
    );
  }
}
