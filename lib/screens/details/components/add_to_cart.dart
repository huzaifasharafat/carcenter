import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';



class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin
      ),
      child: Row(
        children: <Widget> [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: product.color,
                )
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                  "assets/icons/add_to_cart.svg"
              ),
              onPressed: () {} ,
            ),
          ),
          Expanded(
            child: SizedBox(

              height: 50,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)
                        )
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(product.color)

                ),
                onPressed: () {} ,
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
