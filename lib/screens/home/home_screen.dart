import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/screens/home/components/body.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../logIn.dart';

class HomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<User?>(context);
    bool loggedIn = user != null;

    return Scaffold(
      appBar: buildAppBar(loggedIn),
      body: Body(),
    );
  }

  AppBar buildAppBar(loggedIn) {
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 70,
      leading: loggedIn ?
      TextButton(
          onPressed: () => auth.signOut(),
          child: Text(
              "sign out",
              style: const TextStyle(
              color: Colors.black26),
          ),
      )
      :
           TextButton(
              onPressed: () =>  signInWithGoogle(),
              child: Text("sign in",
                style: const TextStyle(
                    color: Colors.black26),
              )
          ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg",
            color: kTextColor,
          ),
          // By default our icon color is white
          onPressed: (){},

        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",
            color: kTextColor,
          ),
          // By default our icon color is white
          onPressed: (){},
        ),
        SizedBox(width: kDefaultPaddin / 2,)

      ],
    );
  }
}

