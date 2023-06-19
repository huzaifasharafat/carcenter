import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../models/car.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.car, required this.contact,
  });
  final int contact;
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPaddin),
          child: Text(
            car.description,
            style: TextStyle(height: 1.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPaddin),
          child: DataTable(
            horizontalMargin: 1,
              columnSpacing: 50,
              columns: [
                DataColumn(
                  label: Text('Mileage'),
                ),
                DataColumn(
                  label: Text('Year'),
                ),

                DataColumn(
                  label: Text('Contact'),
                ),
                DataColumn(
                  label: Text('Company'),
                ),
              ],
              rows: [

                DataRow(cells: [
                  DataCell(Text(car.milage.toString())),
                  DataCell(Text(car.year)),
                  DataCell(Text('0${contact}')),
                  DataCell(Text(car.company)),
                ])
              ]
          ),
        )
      ],
    )
    ;
  }
}
