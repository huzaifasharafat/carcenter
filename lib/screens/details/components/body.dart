import 'package:flutter/material.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/models/Product.dart';
import 'package:carcenter/screens/details/components/add_to_cart.dart';
import 'package:carcenter/screens/details/components/color_and_size.dart';
import 'package:carcenter/screens/details/components/counter_with_fav_btn.dart';
import 'package:carcenter/screens/details/components/description.dart';
import 'package:carcenter/screens/details/components/product_title_with_image.dart';


class body extends StatelessWidget {
  final Product product;

  const body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(

      child: Column(

        children: <Widget>[

          SizedBox(

            height: size.height,
            child: Stack(
              children: <Widget> [

                Container(

                  margin: EdgeInsets.only(top: size.height *0.3),
                  padding: EdgeInsets.only(
                      top: size.height*0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                  ),
                  //height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24)
                    ),
                  ),
                  child: Column(
                    children: <Widget> [
                      ColorAndSize(product: product),
                      Description(product: product),
                      const CounterWithFavBtn(),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}




