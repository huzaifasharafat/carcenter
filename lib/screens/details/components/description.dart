import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../models/car.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin),
      child: Text(
        car.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
