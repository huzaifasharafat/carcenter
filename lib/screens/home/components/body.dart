import 'package:flutter/material.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/models/Product.dart';
import 'package:carcenter/screens/details/components/details_screen.dart';
import 'package:carcenter/screens/home/components/categories.dart';
import 'package:carcenter/screens/home/components/item_card.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var  products = Provider.of<List<Product>>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold)
            ,
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()
                ),// make scroll bounce
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                  gridDelegate: const
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          mainAxisSpacing: kDefaultPaddin,
                          crossAxisSpacing: kDefaultPaddin,
                      ),
                  itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                          product: products[index],
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

