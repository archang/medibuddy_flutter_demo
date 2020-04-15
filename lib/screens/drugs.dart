import 'package:flutter/material.dart';
import 'package:web/widgets/widgets.dart';

class DrugsScreen extends StatefulWidget {

  @override
  _DrugsScreenState createState() => _DrugsScreenState();
}

class _DrugsScreenState extends State<DrugsScreen> with AutomaticKeepAliveClientMixin<DrugsScreen>{

  var drugs = [
    {
      "name": "Tylenol",
      // "sex": "M",
      // "birthday": "04/11/1998",
      // "weight": "130",
      // "bodyFat": "8%",
      // "geneticData": "N/A",
      // "dosage": "Tylenol"
    },
    {
      "name": "Claritin",
      // "sex": "M",
      // "birthday": "03/07/1995",
      // "weight": "160",
      // "bodyFat": "5%",
      // "geneticData": "N/A",
      // "dosage": "Claritin"
    },
    {
      "name": "Ethanol",
      // "sex": "F",
      // "birthday": "05/30/1974",
      // "weight": "110",
      // "bodyFat": "15%",
      // "geneticData": "N/A",
      // "dosage": "None"
    }
  ];

  List<DataRow> loadData() {
    List<DataRow> data = [];
    for(var drug in drugs) {
      data.add(
        DataRow(
          cells: [
            DataCell(
              Text(drug['name']),
            ),
            // DataCell(
            //   Text(drug['sex'])
            // ),
            // DataCell(
            //   Text(drug['birthday'])
            // ),
            // DataCell(
            //   Text(drug['weight'])
            // ),
            // DataCell(
            //   Text(drug['bodyFat'])
            // ),
            // DataCell(
            //   Text(drug['geneticData'])
            // ),
            // DataCell(
            //   Text(drug['dosage']),
            // )
          ]
        )
      );
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () async {
                        // var drug = await openNewdrugDialog(context);
                        // if(drug!=null) {
                        //   setState(() {
                        //     drugs.add(drug);
                        //   });
                        // }
                      },
                      child: const Text(
                        'Add Drug',
                        style: TextStyle(fontSize: 20)
                      ),
                    ),
                  ]
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(
                        label: ColumnHeaderWidget("Name")
                      ),
                      // DataColumn(
                      //   label: ColumnHeaderWidget("Sex")
                      // ),
                      // DataColumn(
                      //   label: ColumnHeaderWidget("Birthday")
                      // ),
                      // DataColumn(
                      //   label: ColumnHeaderWidget("Weight")
                      // ),
                      // DataColumn(
                      //   label: ColumnHeaderWidget("Body Fat %")
                      // ),
                      // DataColumn(
                      //   label: ColumnHeaderWidget("Genetic Data (Coming Soon!)")
                      // ),
                      // DataColumn(
                      //   label: ColumnHeaderWidget("Current Medication")
                      // )
                    ],
                    rows: loadData()
                  )
                )
              ]
            )
          )
        )
      )
    );
  }

  @override
  bool get wantKeepAlive => true;
}
