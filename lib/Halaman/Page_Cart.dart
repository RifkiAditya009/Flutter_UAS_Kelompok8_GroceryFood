import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 50, left: 20, bottom: 25),
              child: Row(children: [
                Image.asset('img/logo/bubble_chart.png'),
                Image.asset('img/logo/Grocery.png'),
                Image.asset('img/logo/App.png'),
              ])),
          Text('Daftar Keranjang',
              style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent)),
        ]),
      ]),
    );
  }
}
