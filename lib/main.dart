import 'package:flutter/material.dart';
import 'package:untitled5/page/BeautyTips.dart';
import 'package:untitled5/page/BestSeller.dart';
import 'package:untitled5/page/Categoties.dart';
import 'package:untitled5/page/MyProfile.dart';
import 'package:untitled5/page/Promotions.dart';
import 'package:untitled5/page/Status.dart';
import 'package:untitled5/page/SignupPage.dart';
import 'package:untitled5/page/AboutUsPage.dart';
import 'package:untitled5/page/Register.dart';
import 'package:untitled5/page/HomePage.dart';
<<<<<<< HEAD
import 'package:untitled5/categoties/makeup/Rarbaeuty.dart';
import 'package:untitled5/page/LoginPage.dart';

=======
import 'package:untitled5/categoties/makeup/Rarbaeuty.dart'; // Import the ProductDetailPage
import 'package:provider/provider.dart';
import 'models/CartModel.dart';
import 'page/CartPage.dart';
>>>>>>> 866cfaa74e2746010371d44c36990daa0e2843f3

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glamora App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
<<<<<<< HEAD
      home: LoginPage(),
=======
      home: SplashScreen(),
>>>>>>> 866cfaa74e2746010371d44c36990daa0e2843f3
      routes: {
        '/login': (context) => LoginPage(),
        '/status': (context) => StatusPage(),
        '/categories': (context) => CategoryPage(),
        '/promotions': (context) => PromotionsPage(),
        '/bestsellers': (context) => BestSellersPage(),
        '/beautytips': (context) => BeautyTipsPage(),
        '/about': (context) => AboutUsPage(),
        '/profile': (context) => MyProfilePage(),
        '/signup': (context) => SignUpPage(),
        '/register': (context) => RegisterPage(),
        '/HomePage': (context) => HomePage1(),
        '/productDetail': (context) => ProductDetailPage(), // Add the route
        '/mycart': (context) => CartPage(), // Add the cart page route
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // เมื่อโหลดเสร็จ -> ไปหน้า SignUp
          Future.microtask(
              () => Navigator.pushReplacementNamed(context, '/signup'));
        }

        return Scaffold(
          backgroundColor: Color(0xFFF2CACA),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo2.png',
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 20),
                CircularProgressIndicator(),
              ],
            ),
          ),
        );
      },
    );
  }
}
