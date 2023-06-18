import 'package:flutter/material.dart';

import '../../../constants.dart';


class CartCounter extends StatefulWidget {

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [

        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (numOfItem >1){
                setState(() {
                  numOfItem--;
                });
              }
            }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin /2),
          child: Text(
            numOfItem.toString().padLeft(2,"0"),
            style: Theme.of(context)
                .textTheme
                .headlineSmall,
          ),

        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItem ++;
              });
            }
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13)
            )
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
