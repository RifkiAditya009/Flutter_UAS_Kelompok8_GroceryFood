import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key, this.isSelected = false}) : super(key: key);

  final bool isSelected;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  logo() {
    return Row(children: [
      Image.asset('img/logo/bubble_chart.png'),
      Image.asset('img/logo/Grocery.png'),
      Image.asset('img/logo/App.png'),
    ]);
  }

  btn_counter() {
    return Container(
      width: 80,
      height: 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xffE1DDFE)),
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
                    setState(() => itemCount != 1 ? itemCount-- : itemCount
                        /*
                    int quantity = int.parse(textController.text);
                    quantity != 1 ? quantity-- : quantity;
                    textController.text = quantity.toString(); */
                        );
                  },
                  backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.remove)),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(itemCount.toString(),
                style: GoogleFonts.montserrat(
                    fontSize: 12, fontWeight: FontWeight.w600)),
            Text('kg',
                style: GoogleFonts.montserrat(
                    fontSize: 12, fontWeight: FontWeight.w600)),
          ]),
          Positioned(
            right: -12,
            child: SizedBox(
                height: 30,
                width: 30,
                child: FloatingActionButton.small(
                    heroTag: 'btn-plus',
                    onPressed: () {
                      setState(() => itemCount++
                          /* 
                      int quantity = int.parse(textController.text);
                    quantity++;
                    textController.text = quantity.toString(); */
                          );
                    },
                    backgroundColor: Colors.greenAccent,
                    child: Icon(Icons.add))),
          ),
        ],
      ),
    );
  }

  final textController = TextEditingController(text: '1');
  int itemCount = 1;
  double harga = 20000;
  double ongkir = 8000;

  //
  cardOrder() {
    return Container(
      height: 72,
      margin: EdgeInsets.only(bottom: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        color: widget.isSelected ? Colors.white : Colors.white,
        shadows: widget.isSelected
            ? [
                BoxShadow(
                    color: Colors.grey, offset: Offset(24, 40), blurRadius: 80)
              ]
            : [],
      ),
      padding: EdgeInsets.all(4),
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          width: 64,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              color: Colors.grey),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('Buah Naga',
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w700)),
              Text('1kg', style: GoogleFonts.montserrat(fontSize: 12)),
              Row(children: [
                //harga
                Text('Rp. ' + (harga * itemCount).toString(),
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w700)),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(right: 10), child: btn_counter())
              ]),
            ]))
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.blueAccent,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: logo(),
        centerTitle: true,
      ),

      //
      body: SafeArea(
          child: Column(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: ListView(
                      children: [
                        cardOrder(),
                        cardOrder(),
                        cardOrder(),
                        cardOrder(),
                        cardOrder(),
                        cardOrder(),
                        cardOrder(),
                        cardOrder(),
                        cardOrder()
                      ],
                    ),
                  ))),

          //batas bawah
          Container(
              child: Padding(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 5, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black,
                        ),
                        alignment: Alignment.center,
                        height: 25,
                        child: Text('Price order',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      )),
                  Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sub Total',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                            Text('Rp. ' + (harga * itemCount).toString(),
                                style: GoogleFonts.montserrat(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ])),
                  Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Biaya Antar',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                            Text('Rp. ' + (ongkir).toString(),
                                style: GoogleFonts.montserrat(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ])),
                  Padding(
                      padding: EdgeInsets.only(bottom: 35, top: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                            Text(
                                'Rp. ' +
                                    ((harga * itemCount) + ongkir).toString(),
                                style: GoogleFonts.montserrat(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ])),
                  Container(
                    width: 350,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Checkout',
                            style: GoogleFonts.montserrat(fontSize: 16)),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        )),
                  ),
                ]),
          ))
        ],
      )),
    );
  }
}
