

import 'package:carcenter/models/dealer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:carcenter/models/Product.dart';

import 'car.dart';

class DatabaseService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Product>> streamProducts()  {
    var ref =  _db.collection('Products');


    return ref.snapshots().map((list) =>
    list.docs.map((doc) => Product.fromMap(doc.data(), doc.id)).toList())
      ;

  }
  Stream<List<Dealer>> streamDealers()  {
    var ref =  _db.collection('Products');


    return ref.snapshots().map((list) =>
        list.docs.map((doc) => Dealer.fromMap(doc.data(), doc.id)).toList())
    ;

  }
  Stream<List<Car>> streamcars(String id)  {
    var ref =  _db.collection('Dealers').doc(id).collection('Cars');


    return ref.snapshots().map((list) =>
        list.docs.map((doc) => Car.fromMap(doc.data(), doc.id)).toList())
    ;

  }


}