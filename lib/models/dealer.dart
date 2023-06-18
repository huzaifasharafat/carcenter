import 'package:flutter/material.dart';



class Dealer{
  final String id, title, image, userid, location;
  final bool listed;
  final int contact;

  Dealer( {
    required this.id,
    required this.title,
    required this.image,
    required this.userid,
    required this.location,
    required  this.listed,
    required this.contact,

});

  factory Dealer.fromMap(Map<String, dynamic> data, String Id){

    return Dealer(
      title: data['title'],
      image: data['image'] ?? '',
      listed: data['listed'] ?? true,
      id: data['image'] ?? '',
      userid: data['image'] ?? '',
      location: data['image'] ?? '',
      contact: data['image'] ?? '',
    );
  }

}