import 'package:carcenter/models/car.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget> [
          Text(
            car.title,
            style:  TextStyle(
                color: Colors.white
            ),
          ),
          Text(
            car.title,
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
                        text: "\$${car.demand}",
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
                car.image,
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
