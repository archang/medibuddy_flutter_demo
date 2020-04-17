import 'package:flutter/material.dart';
import 'package:web/widgets/widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:math';

class DoseScreen extends StatefulWidget {
  dynamic patient;

  DoseScreen({Key key, this.patient}) : super(key: key);

  @override
  _DoseScreenState createState() => _DoseScreenState();
}

class _DoseScreenState extends State<DoseScreen> with AutomaticKeepAliveClientMixin<DoseScreen>{

  String _drug = '';
  String _drinkTypeSelected = '';
  String _patient = '';
  String _route = 'IV';
  List<String> patients = ['David', 'Arnold', 'Susan'];
  List<String> drugs = ['Tylenol', 'Claritin', 'Alcohol', 'Warfarin', 'THC'];
  List<String> drugsOfPillType = ['Tylenol', 'Claritin', 'Warfarin'];
  List<String> drinkTypes = ['Beer', 'Wine', 'Spirit'];
  List<String> routes = ['IV', 'Oral', 'Topical', 'Sublingual', 'Inhaled'];
  List<String> alcoholRoutes = ['IV', 'Oral', 'Inhaled'];
  TextEditingController alcoholByVolumeController = TextEditingController();
  TextEditingController timeAdministeredController = TextEditingController();
  bool _addDoseReveal = true;
  bool _removeDoseReveal = false;

  bool drugSelected() {
    if (this._drug == '') {
      return false;
    } else {
      return true;
    }
  }

  bool patientSelected() {
    if (this._patient =='') {
      return false;
    } else {
      return true;
    }
  }

  bool pillDrugTypeSelected() {
    if (drugsOfPillType.contains(this._drug)) {
      return true;
    } else {
      return false;
    }
  }

  bool alcoholTypeSelected() {
    if (this._drug == 'Alcohol') {
      return true;
    } else {
      return false;
    }
  }

  bool weedTypeSelected() {
    if (this._drug == 'THC') {
      return true;
    } else {
      return false;
    }
  }

  List<charts.Series<TimeSeriesSales, DateTime>> chartData = [
    new charts.Series<TimeSeriesSales, DateTime>(
      id: 'Sales',
      domainFn: (TimeSeriesSales sales, _) => sales.time,
      measureFn: (TimeSeriesSales sales, _) => sales.sales,
      data: [TimeSeriesSales(
          DateTime.now().add(Duration(minutes: 0)),
          0)],
    )
  ];

  List<Widget> alcoholCardList = [

  ];


  @override
  void initState() {
    super.initState();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      Card(
                          child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  "Patient",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 20,
                                                  )
                                              ),
                                              DropdownButton(
                                                hint: _patient == null ? Text('Patient') : Text(
                                                    _patient,
                                                    style: TextStyle(
                                                        color: Colors.black
                                                    )
                                                ),
                                                isExpanded: true,
                                                iconSize: 30.0,
                                                items: patients.map(
                                                      (val) {
                                                    return DropdownMenuItem<String>(
                                                      value: val,
                                                      child: Text(val),
                                                    );
                                                  },
                                                ).toList(),
                                                onChanged: (val) {
                                                  setState(() {
                                                    _patient = val;
                                                  });
                                                },
                                              )
                                            ]
                                        )
                                    )
                                  ]
                              )
                          )
                      ),
                      Visibility(
                        visible: patientSelected(),
                        child:
                        Card(
                            child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                          child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(top: 0),
                                                  child: Row(
                                                      children: <Widget> [
                                                        Text(
                                                            "Drug",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.normal,
                                                              fontSize: 20,
                                                            )
                                                        ),
                                                      ]
                                                  ),
                                                ),
                                                DropdownButton(
                                                  hint: _drug == null ? Text('Drug') : Text(
                                                      _drug,
                                                      style: TextStyle(
                                                          color: Colors.black
                                                      )
                                                  ),
                                                  isExpanded: true,
                                                  iconSize: 30.0,
                                                  items: drugs.map(
                                                        (val) {
                                                      return DropdownMenuItem<String>(
                                                        value: val,
                                                        child: Text(val),
                                                      );
                                                    },
                                                  ).toList(),
                                                  onChanged: (val) {
                                                    setState(() {
                                                      _drug = val;
                                                    });
                                                  },
                                                ),
                                              ]
                                          )
                                      )
                                    ]
                                )
                            )
                        ),
                      ),
                      Visibility(
                        visible: alcoholTypeSelected(),
                        child:
//                          Column(
//                            children: alcoholCardList,
                        Card(
                            child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Column(
                                                      children: <Widget>[

                                                        Padding(
                                                          padding: EdgeInsets.only(top: 10),
                                                          child: Row(
                                                              children: <Widget> [
                                                                Text(
                                                                    "Type of Drink",
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.normal,
                                                                      fontSize: 20,
                                                                    )
                                                                ),
                                                              ]
                                                          ),
                                                        ),
                                                        DropdownButton(
                                                          hint: _drug == null ? Text('Drink Type') : Text(
                                                              _drinkTypeSelected,
                                                              style: TextStyle(
                                                                  color: Colors.black
                                                              )
                                                          ),
                                                          isExpanded: true,
                                                          iconSize: 30.0,
                                                          items: drinkTypes.map(
                                                                (val) {
                                                              return DropdownMenuItem<String>(
                                                                value: val,
                                                                child: Text(val),
                                                              );
                                                            },
                                                          ).toList(),
                                                          onChanged: (val) {
                                                            setState(() {
                                                              _drinkTypeSelected = val;
                                                            });
                                                          },
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(top: 10),
                                                          child: Row(
                                                              children: <Widget> [
                                                                Text(
                                                                    "Alcohol by Volume",
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.normal,
                                                                      fontSize: 20,
                                                                    )
                                                                ),
                                                              ]
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(bottom: 10),
                                                          child: TextField(
                                                            controller: alcoholByVolumeController,
                                                            decoration: InputDecoration(
                                                              focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: Colors.green
                                                                  )
                                                              ),
                                                              hintText: '5%',
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),
                                                )
                                            ),
                                            Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Column(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: EdgeInsets.only(top: 0),
                                                          child: Row(
                                                              children: <Widget> [
                                                                Text(
                                                                    "Route of Administration",
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.normal,
                                                                      fontSize: 20,
                                                                    )
                                                                ),
                                                              ]
                                                          ),
                                                        ),
                                                        DropdownButton(
                                                          hint: _route == null ? Text('Route') : Text(
                                                              _route,
                                                              style: TextStyle(
                                                                  color: Colors.black
                                                              )
                                                          ),
                                                          isExpanded: true,
                                                          iconSize: 30.0,
                                                          items: alcoholRoutes.map(
                                                                (val) {
                                                              return DropdownMenuItem<String>(
                                                                value: val,
                                                                child: Text(val),
                                                              );
                                                            },
                                                          ).toList(),
                                                          onChanged: (val) {
                                                            setState(() {
                                                              _route = val;
                                                            });
                                                          },
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(top: 10),
                                                          child: Row(
                                                              children: <Widget> [
                                                                Text(
                                                                    "Time of Administration",
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.normal,
                                                                      fontSize: 20,
                                                                    )
                                                                ),
                                                              ]
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(bottom: 10),
                                                          child: TextField(
                                                            controller: timeAdministeredController,
                                                            decoration: InputDecoration(
                                                              focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: Colors.green
                                                                  )
                                                              ),
                                                              hintText: 'minutes from now',
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(top: 10),
                                                          child: Row(
                                                              children: <Widget> [
                                                                Text(
                                                                    "Number of Drinks",
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.normal,
                                                                      fontSize: 20,
                                                                    )
                                                                ),
                                                              ]
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(bottom: 10),
                                                          child: TextField(
                                                            controller: timeAdministeredController,
                                                            decoration: InputDecoration(
                                                              focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: Colors.green
                                                                  )
                                                              ),
                                                              hintText: '1',
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),
                                                )
                                            ),
                                            Expanded(
                                                child: Column(
                                                    children: <Widget>[
                                                      Visibility(
                                                        visible: this._addDoseReveal,
                                                        child:
                                                          RaisedButton(
                                                            onPressed: () async {
                                                              setState(() {
                                                                this._addDoseReveal = false;
                                                                this._removeDoseReveal = true;
                                                                var dataLength = 720;
                                                                var data = new List<TimeSeriesSales>(dataLength);
                                                                for (int i = 0; i < dataLength; i++) {
                                                                  data[i] = new TimeSeriesSales(
                                                                    new DateTime.now().add(Duration(minutes: i)),
                                                                    -1.7142 * exp(-i / 60) - 0.005 * i + 1.7142);
                                                                }
                                                                chartData = [
                                                                  new charts.Series<TimeSeriesSales, DateTime>(
                                                                    id: 'Sales',
                                                                    domainFn: (TimeSeriesSales sales, _) => sales.time,
                                                                    measureFn: (TimeSeriesSales sales, _) => sales.sales,
                                                                    data: data,
                                                                  )
                                                                ];
                                                              });
                                                            },
                                                            child: const Text(
                                                                'Add Dosage',
                                                                style: TextStyle(fontSize: 24)
                                                            ),
                                                          )
                                                      ),
                                                          Visibility(
                                                            visible: this._removeDoseReveal,
                                                            child:
                                                          RaisedButton(
                                                          onPressed: () async {
                                                          setState(() {
                                                            this._addDoseReveal = true;
                                                            this._removeDoseReveal = false;
                                                            var dataLength = 240;
                                                            var data = new List<TimeSeriesSales>(dataLength);
                                                            for (int i = 0; i < dataLength; i++) {
                                                              data[i] = new TimeSeriesSales(
                                                                  new DateTime.now().add(Duration(minutes: i)),
                                                                  -1.7142 * exp(-i / 60) - 0.005 * i + 1.7142);
                                                            }
                                                            chartData = [
                                                              new charts.Series<TimeSeriesSales, DateTime>(
                                                                id: 'Sales',
                                                                domainFn: (TimeSeriesSales sales, _) => sales.time,
                                                                measureFn: (TimeSeriesSales sales, _) => sales.sales,
                                                                data: data,
                                                              )
                                                            ];
                                                          });
                                                          },
                                                          child: const Text(
                                                          'Remove Dosage',
                                                          style: TextStyle(fontSize: 24)
                                                          ),
                                                          )
                                                          ),



                                                    ]
                                                )
                                            )
                                          ]
                                      )
                                    ]
                                )
                            )
                        ),
                      ),



                    ]
                )
              )
            ),
            Expanded(
              child: Card(
                child: TimeSeriesRangeAnnotationMarginChart(chartData)
              )
            )
          ]
        )
      )
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class TimeSeriesSales {
  final DateTime time;
  final double sales;

  TimeSeriesSales(this.time, this.sales);

}

