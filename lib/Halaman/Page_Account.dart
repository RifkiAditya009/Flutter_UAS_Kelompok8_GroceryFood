import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok8_groceryfood/Page_Dashboard.dart';

class PageAccount extends StatefulWidget {
  const PageAccount({Key? key}) : super(key: key);

  @override
  _PageAccountState createState() => _PageAccountState();
}

class _PageAccountState extends State<PageAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(55),
                        bottomRight: Radius.circular(55)),
                    image: DecorationImage(
                        image: AssetImage('img/sayuran pattern2.jpg'),
                        fit: BoxFit.cover)),
              ),
              Positioned.fill(
                  bottom: -165,
                  child: Align(
                      alignment: Alignment.center,
                      child: Material(
                        shape: CircleBorder(),
                        elevation: 2,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Ink.image(
                            image: AssetImage('img/foto-profil.jpg'),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover),
                      ))),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                  color: Colors.white),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 50),
              child: Column(children: [
                Text('Rifki Aditya',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)),
                Text('ikiadit091@gmail.com',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)),
              ])),

          //tgl lahir
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 35, right: 20),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                        'Tanggal Lahir'
                        '\n29 Februari 2000',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)),
                  ))),
          //hp
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                        'Nomor Kontak'
                        '\n0838-2172-3xxx',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)),
                  ))),
          //alamat
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                        'Alamat'
                        '\nCikalong wetan, kabupaten Bandung Barat',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)),
                  ))),
          //button
          Row(children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              primary: Color(0xffE1DDFE)),
                          icon: Icon(Icons.account_box_rounded),
                          label: Text(
                            'Update Profil',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          )),
                    ))),
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    primary: Color(0xffE1DDFE)),
                icon: Icon(Icons.info_rounded),
                label: Text(
                  'About',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w600),
                )),
          ])
        ],
      )),
    );
  }
}
