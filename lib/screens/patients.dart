import 'package:flutter/material.dart';
import 'package:web/widgets/widgets.dart';

class PatientsScreen extends StatefulWidget {

  @override
  _PatientsScreenState createState() => _PatientsScreenState();
}

class _PatientsScreenState extends State<PatientsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: DataTable(
              columns: [
                DataColumn(
                  label: ColumnHeaderWidget("Name")
                ),
                DataColumn(
                  label: ColumnHeaderWidget("Sex")
                ),
                DataColumn(
                  label: ColumnHeaderWidget("Birthday")
                ),
                DataColumn(
                  label: ColumnHeaderWidget("Weight")
                ),
                DataColumn(
                  label: ColumnHeaderWidget("Body Fat %")
                ),
                DataColumn(
                  label: ColumnHeaderWidget("Genetic Data (Coming Soon!)")
                )
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(
                      Text('Dash'),
                    ),
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash')
                    )
                  ]
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash')
                    ),
                    DataCell(
                      Text('Dash'),
                      placeholder: true
                    )
                  ]
                )
              ]
            )
          )
        )
      )
    );
  }
}
