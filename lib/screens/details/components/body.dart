import 'package:flutter/material.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/models/Product.dart';
import 'package:carcenter/screens/details/components/add_to_cart.dart';
import 'package:carcenter/screens/details/components/color_and_size.dart';
import 'package:carcenter/screens/details/components/counter_with_fav_btn.dart';
import 'package:carcenter/screens/details/components/description.dart';
import 'package:carcenter/screens/details/components/car_title_with_image.dart';

import '../../../models/car.dart';


class body extends StatelessWidget {
  final Car car;
  final int contact;

  const body({super.key, required this.car, required this.contact});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics()
      ),

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
                      //ColorAndSize(car: car),
                      Description(car: car,contact : contact),
                      // const CounterWithFavBtn(),
                      //AddToCart(car: car),
                    ],
                  ),
                ),
                ProductTitleWithImage(car: car)
              ],
            ),
          )
        ],
      ),
    );
  }
}




