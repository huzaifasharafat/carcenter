import 'package:flutter/material.dart';


class Car{
  final String title, image, company, year , importyear, description, Did;
  final int milage, demand, soldAt ;
  final bool listed, sold;
  final Color color;


  Car({
    required this.color ,
    required this.listed,
    required this.sold,
    required this.title,
    required this.image,
    required this.company,
    required this.year,
    required this.importyear,
    required this.description,
    required this.milage,
    required this.demand,
    required this.soldAt,
    required this.Did,

});

  factory Car.fromMap(Map<String, dynamic> data, String Id){

    return Car(
        title: data['title'] ?? '',
        image: data['image'] ?? '',
        company: data['company'] ?? '',
        year: data['year'] ?? '',
        importyear: data['import'] ?? '',
        description: data['description'] ?? '',
        milage: data['mileage'] ?? 0,
        demand: data['demand'] ?? 0,
        soldAt: data['soldAt'] ?? 0,
        Did: data['id'] ?? '',
        listed: data['listed'] ?? true,
        sold: data['sold'] ?? false,
      color: Color(0xFF3D82AE),
    );
  }


}