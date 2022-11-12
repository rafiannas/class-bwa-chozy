import 'package:flutter/material.dart';

class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String county;
  int rating;
  // String address;
  // String phone;
  // String mapUrl;
  // List photos;
  // int numberOfKitchens;
  // int numberOfBedrooms;
  // int numberOfCupboards;

  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.city,
    required this.county,
    required this.rating,
    // required this.address,
    // required this.phone,
    // required this.mapUrl,
    // required this.photos,
    // required this.numberOfKitchens,
    // required this.numberOfBedrooms,
    // required this.numberOfCupboards,
  });

  // Space.fromJSON(json) {
  //   id = json['id'];
  //   name = json['name'];
  //   city = json['city'];
  //   county = json['county'];
  //   imageUrl = json['imageUrl'];
  //   price = json['price'];
  //   rating = json['rating'];
  //   address = json['address'];
  //   phone = json['phone'];
  //   mapUrl = json['mapUrl'];
  //   numberOfKitchens = json['numberOfKitchens'];
  //   numberOfBedrooms = json['numberOfBedrooms'];
  //   numberOfCupboards = json['numberOfCupboards'];
  // }
}
