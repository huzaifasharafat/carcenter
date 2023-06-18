import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/screens/details/components/body.dart';

import '../../../models/Product.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/search.svg')
        ),
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/cart.svg')
        ),
        SizedBox(width: kDefaultPaddin /2,)

      ],
    );
  }
}
