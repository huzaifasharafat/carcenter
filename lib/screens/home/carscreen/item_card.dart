import 'package:carcenter/models/car.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Car? car;
  final VoidCallback? press;

  const ItemCard({
    Key? key,
    this.car,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              height: 155,
              width: 160,
              // decoration: BoxDecoration(
              //     //color: Color(0xFF3D82AE),
              //     borderRadius: BorderRadius.circular(16)
              // ),
              child: Image.network(car!.image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: kDefaultPaddin/4 ),
              child: Text(
                car!.title,
                style: const TextStyle(color: kTextLightColor),),
            ),
            Text(
              "RS ${car!.demand}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
