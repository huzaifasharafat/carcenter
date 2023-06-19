import 'package:carcenter/models/dealer.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Dealer? dealer;
  final VoidCallback? press;

  const ItemCard({
    Key? key,
    this.dealer,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            padding: EdgeInsets.all(kDefaultPaddin),
             height: 180,
             width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16)
            ),
            child: Image.network(dealer!.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric( vertical: kDefaultPaddin/4 ),
            child: Text(
              dealer!.title,
              style: TextStyle(color: kTextLightColor),),
          ),
          Text(
            "0${dealer!.contact}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
