import 'package:flutter/material.dart';

class ItemModel {
  String id;
  String namaProduk;
  double harga;
  String imageProduk;

  ItemModel(
      {required this.id,
      required this.namaProduk,
      required this.harga,
      required this.imageProduk});
}
