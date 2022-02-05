import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  static const routename = '/detailPage';

  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int itemCount = 1;
  double harga = 20000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE3FFDA),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xffE3FFDA),
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(children: [
            Image.asset('img/logo/bubble_chart.png'),
            Image.asset('img/logo/Grocery.png'),
            Image.asset('img/logo/App.png'),
          ]),
        ),
        body: SafeArea(
            child: Column(children: [
          //button
          Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_rounded),
                        color: Colors.greenAccent),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_rounded),
                      color: Colors.greenAccent,
                    )
                  ])),

          //
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Image.asset('img/banner-1.png', scale: 1.5)),

          Expanded(
            child: Stack(children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      color: Colors.black)),
              Padding(
                padding:
                    EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 25),
                child: Column(children: [
                  //top desc
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(Icons.star_rounded, color: Colors.yellow),
                          Text('4.9',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ]),
                        Row(children: [
                          Icon(Icons.fireplace_rounded,
                              color: Colors.redAccent),
                          Text('80' ' Cal',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white))
                        ]),
                        Row(children: [
                          Icon(Icons.delivery_dining_rounded,
                              color: Colors.greenAccent),
                          Text('Fri,' ' 28.' '01',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white))
                        ])
                      ]),
                  //judul dan button
                  Padding(
                      padding: EdgeInsets.only(top: 45),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Mangga',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                              //button
                              Container(
                                width: 80,
                                height: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white),
                                child: Stack(
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        left: -12,
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: FloatingActionButton.small(
                                              heroTag: 'btn-min',
                                              onPressed: () {
                                                setState(() => itemCount != 1
                                                    ? itemCount--
                                                    : itemCount);
                                              },
                                              backgroundColor: Colors.blueGrey,
                                              child: Icon(Icons.remove)),
                                        ),
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(itemCount.toString(),
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            Text('kg',
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ]),
                                      Positioned(
                                        right: -12,
                                        child: SizedBox(
                                            height: 30,
                                            width: 30,
                                            child: FloatingActionButton.small(
                                                heroTag: 'btn-plus',
                                                onPressed: () {
                                                  setState(() => itemCount++);
                                                },
                                                backgroundColor:
                                                    Colors.greenAccent,
                                                child: Icon(Icons.add))),
                                      ),
                                    ]),
                              ),
                            ]),
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Kesegaran pesanan anda akan terjaga dengan standar kualitas pengiriman Grocery Food',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, color: Colors.white),
                                textAlign: TextAlign.justify,
                              )),
                        ),
                      ])),
                ]),
              )
            ]),
          )
        ])),
        //bottom
        bottomNavigationBar: BottomAppBar(
          elevation: 5,
          child: Container(
            color: Colors.white,
            height: 70,
            child: Stack(
              children: <Widget>[
                Row(children: [
                  //symbol usdollar
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Rp.',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      )),

                  //
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          (harga * itemCount).toString(),
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                  ),
                ]),

                //button belisekarang
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: SizedBox(
                      width: 145,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Masuk Keranjang',
                            style: GoogleFonts.montserrat(
                                fontSize: 13, fontWeight: FontWeight.w500)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
