import 'package:flutter/cupertino.dart';

class Contact {
  final int id;
  String firstName;
  String lastName;
  final List<String> addresses;
  ImageProvider? image;

  Contact({
    required this.id,
    this.firstName = "",
    this.lastName = "",
    this.addresses = const [],
    this.image
  });
}
