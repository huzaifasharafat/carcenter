
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carcenter/models/db.dart';
import 'package:string_to_hex/string_to_hex.dart';
import 'db.dart';

class Product {
  final String image, title, description, id;
  final int price, size;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });

  factory Product.fromMap(Map<String, dynamic> data, String Id){

    return Product(
        id:  Id ?? '',
        image: data['image'] ?? '',
        title: data['title'] ?? '' ,
        price: data['price'] ?? 0,
        description: data['description'] ?? '',
        size: data['size'] ?? 2 ,
        color: Color(int.parse(data['color'] ?? '0xFF3D82AE'))
    );
  }
}


// List<Product> products = [
//   //  getproduct("1")
//   // ,
//
//   Product(
//       id: 1,
//       title: "Office Code",
//       price: 234,
//       size: 12,
//       description: dummyText,
//       image: "https://firebasestorage.googleapis.com/v0/b/onlinestoreui.appspot.com/o/bag_1.png?alt=media&token=e01106a1-f08e-46f9-86e1-5a00c8d44769",
//       color: Color(int.parse('0xFF3D82AE'))),
//   Product(
//       id: 2,
//       title: "Belt Bag",
//       price: 234,
//       size: 8,
//       description: dummyText,
//       image: "https://firebasestorage.googleapis.com/v0/b/onlinestoreui.appspot.com/o/bag_2.png?alt=media&token=6465d87e-11ab-4c82-ab28-84f632e5d8dd",
//       color: Color(0xFFD3A984)),
//   Product(
//       id: 3,
//       title: "Hang Top",
//       price: 234,
//       size: 10,
//       description: dummyText,
//       image: "https://firebasestorage.googleapis.com/v0/b/onlinestoreui.appspot.com/o/bag_3.png?alt=media&token=d04675e7-554b-4849-ba94-e3a957a1ca7b",
//       color: Color(0xFF989493)),
//   Product(
//       id: 4,
//       title: "Old Fashion",
//       price: 234,
//       size: 11,
//       description: dummyText,
//       image: "https://firebasestorage.googleapis.com/v0/b/onlinestoreui.appspot.com/o/bag_4.png?alt=media&token=a2e7f007-ebbb-40f1-9624-cf33d950a8cb",
//       color: Color(0xFFE6B398)),
//   Product(
//       id: 5,
//       title: "Office Code",
//       price: 234,
//       size: 12,
//       description: dummyText,
//       image: "https://firebasestorage.googleapis.com/v0/b/onlinestoreui.appspot.com/o/bag_5.png?alt=media&token=ba6a1146-9392-401c-9643-579c55910452",
//       color: Color(0xFFFB7883)),
//   Product(
//     id: 6,
//     title: "Office Code",
//     price: 234,
//     size: 12,
//     description: dummyText,
//     image: "https://firebasestorage.googleapis.com/v0/b/onlinestoreui.appspot.com/o/bag_6.png?alt=media&token=98186874-3dff-4cc0-9939-1c08e279cab1",
//     color: Color(0xFFAEAEAE),
//   ),
// ];
//
// String dummyText =
//     "dummy";
//
// List<Product> products2 = [
//
//
//  Product(
// id: 1,
//        title: "Office Code",
//       price: 234,
//        size: 12, description: "dummyText",
//      image: "https://firebasestorage.googleapis.com/v0/b/onlinestoreui.appspot.com/o/bag_1.png?alt=media&token=e01106a1-f08e-46f9-86e1-5a00c8d44769",
//        color: Color(int.parse('0xFF3D82AE')))
// ];