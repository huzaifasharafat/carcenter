import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carcenter/screens/details/components/cart_counter.dart';


class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(6),
          height: 32,
          width: 23,
          decoration: const BoxDecoration(
              color: Color(0xffff6464),
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}
