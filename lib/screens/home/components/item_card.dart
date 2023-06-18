import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? press;

  const ItemCard({
    Key? key,
    this.product,
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
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
                color: product?.color,
                borderRadius: BorderRadius.circular(16)
            ),
            child: Image.network(product!.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric( vertical: kDefaultPaddin/4 ),
            child: Text(
              product!.title,
              style: TextStyle(color: kTextLightColor),),
          ),
          Text(
            "\$${product!.price}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
