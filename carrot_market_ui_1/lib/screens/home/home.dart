import 'package:carrot_market_ui_1/models/product.dart';
import 'package:carrot_market_ui_1/screens/components/item_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("좌동"),
            Icon(FontAwesomeIcons.downLong, color: Colors.black),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          Icon(FontAwesomeIcons.search, color: Colors.black, size: 20),
          SizedBox(width: 20),
          Icon(FontAwesomeIcons.list, color: Colors.black, size: 20),
          SizedBox(width: 20),
          Icon(FontAwesomeIcons.bell, color: Colors.black, size: 20),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: List.generate(productList.length,
                  (index) => ItemCard(product: productList[index])),
            ),
          ),
        ],
      ),
    );
  }
}
