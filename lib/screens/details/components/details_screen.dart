import 'package:carcenter/models/car.dart';
import 'package:carcenter/models/db.dart';
import 'package:carcenter/screens/home/carscreen/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/screens/details/components/body.dart';
import 'package:provider/provider.dart';

import '../../../models/car.dart';
import '../../../models/dealer.dart';


class DetailsScreen extends StatelessWidget {
  final Car car;
  final int contact;

  const DetailsScreen({super.key, required this.car, required this.contact});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: car.color,
      appBar: buildAppBar(context),
      body: body(car: car, contact: contact),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: car.color,
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
      ),
      // actions: <Widget>[
      //   IconButton(
      //       onPressed: (){},
      //       icon: SvgPicture.asset('assets/icons/search.svg')
      //   ),
      //   IconButton(
      //       onPressed: (){},
      //       icon: SvgPicture.asset('assets/icons/cart.svg')
      //   ),
      //   SizedBox(width: kDefaultPaddin /2,)
      //
      // ],
    );
  }
}
