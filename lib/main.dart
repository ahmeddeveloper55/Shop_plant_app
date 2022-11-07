import 'package:flutter/material.dart';
import 'package:plant_app_ui/Provider/floweringProvider.dart';
import 'package:plant_app_ui/Provider/greenProvider.dart';
import 'package:plant_app_ui/Provider/indoorProvider.dart';
import 'package:plant_app_ui/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => greenProvider()),
        ChangeNotifierProvider(create: (context) => indoorProvider()),
        ChangeNotifierProvider(create: (context) => floweringProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          primaryColor: Color(0xff67864A),
        ),
      ),
    );
  }
}
