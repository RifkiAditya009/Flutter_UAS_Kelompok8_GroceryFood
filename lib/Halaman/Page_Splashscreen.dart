import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_Detail.dart';
import 'package:kelompok8_groceryfood/Page_Dashboard.dart';
import 'package:kelompok8_groceryfood/main.dart';
import 'package:kelompok8_groceryfood/screens/loginscreen.dart';

class ModelData {
  final String dataGambar;
  final String dataJudul;
  final String dataDeskripsi;
  final String dataTextButton;
  final String dataSlideWarna1;
  final String dataSlideWarna2;
  final String dataSlideWarna3;
  final Color dataBackground;

  ModelData(
      {required this.dataGambar,
      required this.dataJudul,
      required this.dataDeskripsi,
      required this.dataTextButton,
      required this.dataSlideWarna1,
      required this.dataSlideWarna2,
      required this.dataSlideWarna3,
      required this.dataBackground});
}

class SplashscreenPage extends StatefulWidget {
  static const routename = '/splashPage';
  const SplashscreenPage({Key? key}) : super(key: key);

  @override
  _SplashscreenPageState createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  final List<ModelData> dataList = [
    ModelData(
        dataGambar: 'img/animasi-intro3.gif',
        dataJudul: "Pilih Kriteria Bahan Olahan, Sayuran, hingga Makanan",
        dataDeskripsi:
            "Temukan kemudahan berbelanja kebutuhan kamu mulai dari bahan olahan, sayuran, hingga produk makanan siap saji dengan berbagai pilihan yang dapat kamu temukan dalam satu perangkat aplikasi.",
        dataTextButton: "Next",
        dataSlideWarna1: 'img/logo/slide-panjang2.png',
        dataSlideWarna2: 'img/logo/slide-pendek.png',
        dataSlideWarna3: 'img/logo/slide-pendek.png',
        dataBackground: Colors.white),
    ModelData(
        dataGambar: 'img/animasi-intro2.gif',
        dataJudul: "Payment Method Cash atau Cashless",
        dataDeskripsi:
            "Kamu dapat menggunakan metode pembayaran sesuai kondisi kamu, dimanapun dan kapanpun",
        dataTextButton: "Next",
        dataSlideWarna1: 'img/logo/slide-pendek.png',
        dataSlideWarna2: 'img/logo/slide-panjang2.png',
        dataSlideWarna3: 'img/logo/slide-pendek.png',
        dataBackground: Colors.white),
    ModelData(
        dataGambar: 'img/animasi-intro1.gif',
        dataJudul: "Delivery Menjamin Kesegaran Pesanan Anda",
        dataDeskripsi:
            "Kesegaran pesanan anda akan terjaga dengan standar kualitas pengiriman Grocery Food",
        dataTextButton: "Get Started",
        dataSlideWarna1: 'img/logo/slide-pendek.png',
        dataSlideWarna2: 'img/logo/slide-pendek.png',
        dataSlideWarna3: 'img/logo/slide-panjang2.png',
        dataBackground: Color(0xffFDE8E4)),
  ];

  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: _controller,
          itemCount: dataList.length,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, i) {
            return Container(
              color: dataList[i].dataBackground,
              child: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 55, left: 20, bottom: 25),
                        child: Row(children: [
                          Image.asset('img/logo/bubble_chart.png'),
                          Image.asset('img/logo/Grocery.png'),
                          Image.asset('img/logo/App.png'),
                        ]),
                      ),
                      Container(
                          color: dataList[i].dataBackground,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  dataList[i].dataGambar,
                                  scale: 2.2,
                                ),
                              ))),
                      Flexible(
                        child: Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                color: Color(0xff3CCD94)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 75, left: 20, right: 20, bottom: 25),
                            child: Column(children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Column(children: <Widget>[
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Welcome',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 28,
                                              fontWeight: FontWeight.w700))),
                                  Padding(
                                    padding: EdgeInsets.only(top: 45),
                                    child: Text(
                                      dataList[i].dataJudul,
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      dataList[i].dataDeskripsi,
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white, fontSize: 14),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ]),
                              )
                            ]),
                          )
                        ]),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 45),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Image.asset(
                                        dataList[i].dataSlideWarna1,
                                        scale: 4)),
                                Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Image.asset(
                                        dataList[i].dataSlideWarna2,
                                        scale: 4)),
                                Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Image.asset(
                                        dataList[i].dataSlideWarna3,
                                        scale: 4))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20, bottom: 45, right: 20),
                            child: SizedBox(
                                width: 125,
                                height: 45,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (currentIndex == dataList.length - 1) {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                LoginScreen.routeName);
                                      }
                                      _controller.nextPage(
                                        duration: Duration(milliseconds: 240),
                                        curve: Curves.easeIn,
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff8C81F7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        )),
                                    child: Text(
                                      dataList[i].dataTextButton,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ))),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
