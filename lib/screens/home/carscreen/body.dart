import 'package:carcenter/models/car.dart';
import 'package:flutter/material.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/screens/details/components/details_screen.dart';
import 'package:carcenter/screens/home/carscreen/item_card.dart';
import 'package:provider/provider.dart';

class CarBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var  cars = Provider.of<List<Car>>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          // child: Text(
          //   "Women",
          //   style: Theme.of(context)
          //   .textTheme
          //   .headlineSmall
          //   ?.copyWith(fontWeight: FontWeight.bold)
          //   ,
          // ),
        ),
       // Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()
                ),// make scroll bounce
                scrollDirection: Axis.vertical,
                itemCount: cars.length,
                  gridDelegate: const
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          mainAxisSpacing: kDefaultPaddin,
                          crossAxisSpacing: kDefaultPaddin,
                      ),
                  itemBuilder: (context, index) => ItemCard(
                    car: cars[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                          car: cars[index],
                      )
                      )
                    ),
                  ),
              ),
            ),
        ),
      ],

    );
  }
}

