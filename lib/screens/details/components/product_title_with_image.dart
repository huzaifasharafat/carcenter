import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget> [
          const Text(
            "Aristocratic Hand Bag",
            style:  TextStyle(
                color: Colors.white
            ),
          ),
          Text(
            product.title,
            style:
            Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(
              color : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: kDefaultPaddin,),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price"),
                    TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        )
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin,),
              Expanded(child: Image.network(
                product.image,
                fit: BoxFit.fitWidth,
              )
              ),
            ],
          ),
        ],
      ),
    );
  }
}