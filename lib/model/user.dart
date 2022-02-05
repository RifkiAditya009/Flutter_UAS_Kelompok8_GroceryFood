import 'package:flutter/material.dart';

class UserModel {
  static const ID = 'id';
  static const Name = 'nama';
  static const Email = 'email';

  String id;
  String nama;
  String email;

  UserModel({required this.id, required this.nama, required this.email});

  //UserModel.from
}
