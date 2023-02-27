import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ReserveScreen extends StatelessWidget {
  const ReserveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24.0),
            width: double.maxFinite,
            alignment: Alignment.center,
            child: const Text(
              "Note: After Click Submit The Park will be reserved",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 220,
            child: DataTable2(
                headingTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
                // decoration: BoxDecoration(color: Colors.grey[200]),
                columnSpacing: 12,
                horizontalMargin: 12,
                columns: const [
                  DataColumn(
                    label: Text(
                      'Information Of Parking',
                    ),
                  ),
                  DataColumn(
                    label: Text('Gridiron-KH/A1'),
                    numeric: true,
                  ),
                ],
                rows: List<DataRow>.generate(
                    3,
                    (index) => const DataRow(cells: [
                          DataCell(Text("Reservation Time")),
                          DataCell(Text('car name')),
                        ]))),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Colors.green, foregroundColor: Colors.white),
            child: Container(
              width: 220,
              height: 26,
              alignment: Alignment.center,
              child: const Text(
                "SUBMIT",
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              width: 220,
              height: 26,
              alignment: Alignment.center,
              child: const Text(
                "logout",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
