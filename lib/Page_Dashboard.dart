import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_Account.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_Cart.dart';
import 'package:kelompok8_groceryfood/Halaman/Page_Detail.dart';
import 'package:kelompok8_groceryfood/model/category.dart';

//Data Model
//kelas kirimData
class SendDataModel {
  final String dataNama;
  final String dataHarga;
  final String dataGambar;
  final Color dataWarna;

  SendDataModel(this.dataNama, this.dataHarga, this.dataGambar, this.dataWarna);
}

class DashboardPage extends StatefulWidget {
  static const routename = 'dashboardPage';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  static List<String> daftarGambar = [
    'img/sayuran pattern1.jpg',
    'img/sayuran pattern2.jpg',
    'img/sayuran pattern3.jpg'
  ];
  static List<String> daftarHarga = ['1000', '2000', '3000'];
  static List<String> daftarNama = ['Kangkung', 'Bayam', 'Kelapa'];
  static List<Color> daftarWarna = [
    Color(0xff70b1a1),
    Color(0xff77a0c6),
    Color(0xffb0463c)
  ];

  /*final List<SendDataModel> DataKirim = [
    List.generate(daftarNama.length, (index) => SendDataModel(dataNama[index], dataHarga[index], dataGambar[index], dataWarna[index]))];
*/
  //deklarasi
  final List<int> numbers = [1, 2, 3, 4, 5, 6];
  final List<String> tabCategory = [
    'Sayuran',
    'Bahan Olahan',
    'Makanan',
    'Rempah'
  ];

  final List<String> banner = [
    'Pilihan Buah Segar',
    'Sayuran Segar',
    'Daging dan Bahan Olahan',
    'Makanan',
    'Milks',
    'Perlengkapan Masak'
  ];
  final List<String> bannerInfo = [
    'Untuk anda menambah energi, dan vitamin',
    'Untuk anda kesehatan tetap terjaga, meningkatkan imunitas',
    'Dipotong oleh produsen terpercaya, dan distribusikan oleh kami terjaga',
    'Pilihan bagi anda makanan siap saji, praktis, dan instant ',
    'Cukupi nutrisi anda dengan kandungan kalsium pada susu UHT',
    'Pilihan alat perlengkapan memasak dan foodgrade'
  ];
  final List<String> bannerImg = [
    'img/sayuran pattern1.jpg',
    'img/sayuran pattern2.jpg',
    'img/sayuran pattern3.jpg',
    'img/sayuran pattern1.jpg',
    'img/sayuran pattern2.jpg',
    'img/sayuran pattern3.jpg'
  ];
  //
  final List<Kategory> categories = [
    Kategory('Sayuran', 'img/green-onion.png', Colors.greenAccent),
    Kategory('Bahan olahan', 'img/img-utama.png', Colors.blueAccent),
    Kategory('Makanan', 'img/img-utama.png', Colors.redAccent),
    Kategory('Rempah', 'img/kunyit.png', Colors.yellow),
  ];

  //fungsi listview
  createListview() {
    return SizedBox(
        height: 170,
        child: ListView.builder(
            itemCount: banner.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: Stack(children: [
                  //image banner
                  Container(
                      width: 280,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(bannerImg[index]),
                              fit: BoxFit.cover))),
                  //gradien image
                  Container(
                    width: 280,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.grey, Colors.black.withOpacity(0)]),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  bottom: 4, left: 10, right: 5),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(banner[index],
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                      textAlign: TextAlign.justify))),
                          Padding(
                              padding: EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    bannerInfo[index],
                                    style: GoogleFonts.montserrat(
                                        fontSize: 13, color: Colors.white),
                                    textAlign: TextAlign.justify,
                                  ))),
                        ]),
                  ),
                ]),
              );
            }));
  }

//fungsi pembuatan list grid
  createGrid() {
    return InkWell(
        onTap: () {
          setState(() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DetailPage()));
          });
        },
        child: SizedBox(
          height: 420,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10),
              shrinkWrap: true,
              itemCount: banner.length,
              itemBuilder: (BuildContext ceontext, int index) {
                return Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Material(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),

                      //
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //imageproduk makanan
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  height: 127,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(bannerImg[index]),
                                          fit: BoxFit.cover)),
                                )),
                            //txt
                            Padding(
                              padding: EdgeInsets.only(left: 5, bottom: 5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mangga',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    Text('Buah',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 12)),
                                  ]),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 5, bottom: 5, right: 5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Rp. ' '12.000',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                    Ink(
                                        height: 25,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              color: Colors.blueAccent,
                                              width: 2),
                                          color: Color(0xff1ED760),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.redAccent,
                                          onTap: () {},
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 19,
                                          ),
                                        ))
                                  ]),
                            ),
                          ]),
                    ));
              }),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffE3FFDA),
        appBar: AppBar(
          backgroundColor: Color(0xffE3FFDA),
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 130,
          title: Column(children: [
            Row(children: [
              Image.asset('img/logo/bubble_chart.png'),
              Image.asset('img/logo/Grocery.png'),
              Image.asset('img/logo/App.png'),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, left: 10, bottom: 5),
                    child: Row(children: [
                      Material(
                        elevation: 2,
                        shape: CircleBorder(),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageAccount()));
                            },
                            child: Ink.image(
                                image: AssetImage('img/foto-profil.jpg'),
                                height: 55,
                                width: 55,
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Hi, '
                            '\nRifki Aditya',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )),
                      //icon keranjang
                    ]),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, bottom: 5),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                    icon: Icon(Icons.shopping_cart_rounded),
                    color: Colors.greenAccent),
              )
            ]),
          ]),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Stack(clipBehavior: Clip.none, children: [
                Column(children: [
                  //fliyer bahan masakan
                  Padding(
                    padding: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff3CCD94),
                      ),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 15),
                                child: Column(children: [
                                  new Text(
                                      'Pengguna baru'
                                      '\ndapatkan promo'
                                      '\nmenarik disini.',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5, right: 50),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailPage()));
                                      },
                                      child: Text('Shop now',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              color: Color(0xff3CCD94),
                                              fontWeight: FontWeight.w500)),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7))),
                                    ),
                                  ),
                                ]),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Image.asset('img/banner-2.png',
                                      scale: 3.4)),
                            ]),
                      ]),
                    ),
                  ),

                  //container BOX border

                  Stack(children: [
                    //BOx Cari
                    Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: TextField(
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  style: GoogleFonts.montserrat(fontSize: 13),
                                  decoration: InputDecoration(
                                      hintText: 'Cari disini',
                                      hintStyle:
                                          GoogleFonts.montserrat(fontSize: 13),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      suffixIcon: Icon(Icons.search_rounded),
                                      contentPadding: EdgeInsets.only(
                                          top: 13, left: 20, bottom: 10)),
                                ),
                              )),

                          //kategori Text
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 15, left: 10),
                                  child: Text(
                                    'Category',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ))),

                          //kategori baru
                          Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Container(
                                height: 85,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.white),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      categories.length,
                                      (index) =>
                                          CategoryCard(categories[index])),
                                  //
                                ),
                              )),

                          // popular

                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Popular Today',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600)),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('lihat semua',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                color: Colors.greenAccent)),
                                      )
                                    ]),
                              )),

                          //list popular
                          createListview(),

                          //makanan
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Makanan',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600)),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text('lihat semua',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 12,
                                                  color: Colors.greenAccent)))
                                    ]),
                              )),

                          //gridview Makanan
                          createGrid(),

                          //BahanOlahan
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Bahan Olahan',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600)),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('lihat semua',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                color: Colors.greenAccent)),
                                      )
                                    ]),
                              )),
                          //gridview BahanOlahan
                          createGrid(),
                        ]))
                  ]),
                ])
              ]),
            ]),
          ),
        ));
  }
}

//kategori
class CategoryCard extends StatelessWidget {
  final Kategory category;

  const CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
            radius: 28,
            backgroundColor: category.katWarna,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.redAccent,
              child: SizedBox(
                  width: 38,
                  child: Image.asset(
                    category.katIcon,
                    fit: BoxFit.cover,
                  )),
            )),
        Text(category.katNama, style: GoogleFonts.montserrat(fontSize: 13))
      ]),
    );
  }
}
