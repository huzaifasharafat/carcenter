import 'package:flutter/material.dart';
import 'package:carcenter/constants.dart';
import 'package:carcenter/models/Product.dart';
import 'package:carcenter/models/db.dart';
import 'package:carcenter/screens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        StreamProvider<User?>
            .value(
          value: FirebaseAuth.instance.authStateChanges(),
          initialData: null,
        ),

        StreamProvider<List<Product>>.value(
            value: DatabaseService().streamProducts(),

            initialData: [],
        )
        ,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }

}





