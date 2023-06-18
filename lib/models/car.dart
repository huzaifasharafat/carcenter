import 'package:flutter/material.dart';


class Car{
  final String title, image, company, year , importyear, description, Did;
  final int milage, demand, soldAt ;

  Car( {
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

    return Car(title: '',
        image: data['image'] ?? '',
        company: data['company'] ?? '',
        year: data['year'] ?? '',
        importyear: data['import'] ?? '',
        description: data['description'] ?? '',
        milage: data['milage'] ?? 0,
        demand: data['demand'] ?? 0,
        soldAt: data['soldAt'] ?? 0,
        Did: data['Did'] ?? '',
    );
  }


}