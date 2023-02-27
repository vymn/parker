import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      child: DataTable2(
          headingTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16,
          ),
          columnSpacing: 12,
          horizontalMargin: 12,
          columns: const [
            DataColumn2(
              label: Text('ID'),
              size: ColumnSize.S,
            ),
            DataColumn(
              label: Text('Name'),
            ),
            DataColumn(
              label: Text('Car_info'),
            ),
            DataColumn(
              label: Text('Time'),
            ),
            DataColumn(
              label: Text('Date'),
              numeric: true,
            ),
          ],
          rows: List<DataRow>.generate(
              3,
              (index) => DataRow(cells: [
                    DataCell(Text("${index + 1}")),
                    const DataCell(Text('car name')),
                    const DataCell(
                      Text('info'),
                    ),
                    DataCell(
                      Text(
                          "${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}"),
                    ),
                    DataCell(
                      Text(
                          "${DateTime.now().month.toString()}:${DateTime.now().year.toString()}"),
                    )
                  ]))),
    );
  }
}
