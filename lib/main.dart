import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_Account.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_Cart.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_Detail.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_ListProduk.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_Splashscreen.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_order.dart';
import 'package:kelompok8_groceryfood/Page_Dashboard.dart';
import 'package:kelompok8_groceryfood/landingScreen.dart';
import 'package:kelompok8_groceryfood/screens/forgetPasswordScreen.dart';
import 'package:kelompok8_groceryfood/screens/loginscreen.dart';
import 'package:kelompok8_groceryfood/screens/signUpScreen.dart';
import 'package:kelompok8_groceryfood/screens/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const routename = '/homepage';
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
        //
        SplashscreenPage.routename: (context) => SplashscreenPage(),
        MyHomePage.routename: (context) => MyHomePage(),
        MyApp.routename: (context) => MyApp(),
        //DetailPage.routename: (context) => DetailPage(kirimDataModel:DataKirim[index],),
        DashboardPage.routename: (context) => DashboardPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const routename = '/btnNav';
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedNavbar = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changeSelectedNavbar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedNavbar = index;
            });
          },
          children: const <Widget>[
            DashboardPage(),
            OrderPage(),
            DetailPage(),
            PageAccount(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        onItemSelected: _changeSelectedNavbar,
        selectedIndex: _selectedNavbar,
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.menu_book_rounded),
              title: Text('Resep'),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorit'),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Akun'),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.grey)
        ],
      ),
    );
  }
}
