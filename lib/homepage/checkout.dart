import 'package:flutter/material.dart';

class checkoutpage extends StatelessWidget {
  const checkoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.redAccent,
        title: const Text('Checkout', style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        )
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
        ),
        alignment: Alignment.center,
        child: const Text(
          'Thank you for placing order',
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),

      ),
    );
  }
}