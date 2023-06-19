import 'package:carcenter/models/car.dart';
import 'package:carcenter/models/dealer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/models/Product.dart';
import 'package:carcenter/screens/details/components/details_screen.dart';
import 'package:carcenter/screens/home/dealerscreen/categories.dart';
import 'package:carcenter/screens/home/dealerscreen/item_card.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../logIn.dart';
import '../../../models/db.dart';
import '../carscreen/body.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var  dealers = Provider.of<List<Dealer>>(context);
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
        //Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()
                ),// make scroll bounce
                scrollDirection: Axis.vertical,
                itemCount: dealers.length,
                  gridDelegate: const
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          mainAxisSpacing: kDefaultPaddin,
                          crossAxisSpacing: kDefaultPaddin,
                      ),
                  itemBuilder: (context, index) => ItemCard(
                    dealer: dealers[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => getcarlist(
                          dealer: dealers[index],
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

class getcarlist extends StatelessWidget {
  final Dealer dealer;
  final auth = FirebaseAuth.instance;


  getcarlist({super.key, required this.dealer});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<User?>(context);
    bool loggedIn = user != null;

    return MultiProvider(
        providers: [
          StreamProvider<List<Car>>.value(
            value: DatabaseService().streamcars(dealer.id),
            initialData: [],),
        ],
        child: Scaffold(
          appBar: buildAppBar(context),
          body: CarBody(),
        )
    );;
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.black45,
          ),
          onPressed: () => Navigator.pop(context),)

    );
  }
}
