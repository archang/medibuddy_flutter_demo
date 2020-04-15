import 'package:flutter/material.dart';
import 'package:web/widgets/widgets.dart';

class PatientsScreen extends StatefulWidget {
  PageController pageController;
  TabController tabController;

  PatientsScreen({Key key, @required this.pageController, @required this.tabController}) : super(key: key);

  @override
  _PatientsScreenState createState() => _PatientsScreenState();
}

class _PatientsScreenState extends State<PatientsScreen> with AutomaticKeepAliveClientMixin<PatientsScreen>{

  var patients = [
    {
      "name": "David",
      "sex": "M",
      "birthday": "04/11/1998",
      "weight": "130",
      "bodyFat": "8%",
      "geneticData": "N/A",
      "dosage": "Tylenol"
    },
    {
      "name": "Arnold",
      "sex": "M",
      "birthday": "03/07/1995",
      "weight": "160",
      "bodyFat": "5%",
      "geneticData": "N/A",
      "dosage": "Claritin"
    },
    {
      "name": "Susan",
      "sex": "F",
      "birthday": "05/30/1974",
      "weight": "110",
      "bodyFat": "15%",
      "geneticData": "N/A",
      "dosage": "None"
    }
  ];

  List<DataRow> loadData() {
    List<DataRow> data = [];
    for(var patient in patients) {
      data.add(
        DataRow(
          cells: [
            DataCell(
              Text(patient['name']),
            ),
            DataCell(
              Text(patient['sex'])
            ),
            DataCell(
              Text(patient['birthday'])
            ),
            DataCell(
              Text(patient['weight'])
            ),
            DataCell(
              Text(patient['bodyFat'])
            ),
            DataCell(
              Text(patient['geneticData'])
            ),
            DataCell(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(patient['dosage']),
                  RaisedButton(
                    onPressed: () async {
                      widget.pageController.jumpToPage(1);
                      widget.tabController.animateTo(1);
                    },
                    child: const Text(
                      'Add Dosage',
                      style: TextStyle(fontSize: 12)
                    ),
                  )
                ]
              )
            )
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
                        var patient = await openNewPatientDialog(context);
                        if(patient!=null) {
                          setState(() {
                            patients.add(patient);
                          });
                        }
                      },
                      child: const Text(
                        'Add Patient',
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
                      ),
                      DataColumn(
                        label: ColumnHeaderWidget("Current Medication")
                      )
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
