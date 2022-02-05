import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class ListProduk extends StatefulWidget {
  const ListProduk({Key? key}) : super(key: key);

  @override
  _ListProdukState createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
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

  //list
  //image banner
  createbanner() {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 20),
      child: Stack(children: [
        //image banner
        Container(
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('img/sayuran pattern1.jpg'),
                    fit: BoxFit.cover))),
        //gradien image
        Container(
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.grey, Colors.black.withOpacity(0)]),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.only(bottom: 2, left: 20, right: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Judul',
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        textAlign: TextAlign.justify))),
            Padding(
                padding: EdgeInsets.only(bottom: 5, left: 20, right: 20),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'desk',
                      style: GoogleFonts.montserrat(
                          fontSize: 15, color: Colors.white),
                      textAlign: TextAlign.justify,
                    ))),
          ]),
        ),
      ]),
    );
  }

  createGridview() {
    return SizedBox(
      height: 420,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.8, crossAxisSpacing: 10),
          shrinkWrap: true,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Material(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //image produk
                          Container(
                              height: 127,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('img/banner-1.png'),
                                    fit: BoxFit.cover),
                              )),

                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Mangga',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Buah',
                                  style: GoogleFonts.montserrat(fontSize: 12))),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Rp. ' '12.000',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600))),
                                Container(
                                  height: 35,
                                  width: 35,
                                  child: FloatingActionButton.small(
                                    onPressed: () {},
                                    child: Icon(Icons.add, size: 20),
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                )
                              ])
                        ]),
                  )),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: <Widget>[
          Padding(
              padding:
                  EdgeInsets.only(top: 50, bottom: 10, left: 20, right: 20),
              child: Row(children: [
                Image.asset('img/logo/bubble_chart.png'),
                Image.asset('img/logo/Grocery.png'),
                Image.asset('img/logo/App.png'),
              ])),
          Padding(padding: EdgeInsets.only(bottom: 10), child: createbanner()),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Daftar Produk',
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              )),
          //container BOX border
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                    color: Color(0xffEEEBFC)),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: createGridview(),
                )),
          )
        ]),
      ]),
    );
  }
}
