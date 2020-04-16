import 'package:flutter/material.dart';
import 'package:web/widgets/widgets.dart';

class DoseScreen extends StatefulWidget {
  dynamic patient;

  DoseScreen({Key key, this.patient}) : super(key: key);

  @override
  _DoseScreenState createState() => _DoseScreenState();
}

class _DoseScreenState extends State<DoseScreen> with AutomaticKeepAliveClientMixin<DoseScreen>{

  String _drug = 'Tylenol';
  String _patient = 'David';
  String _route = 'IV';
  List<String> patients = ['David', 'Arnold', 'Susan'];
  List<String> drugs = ['Tylenol', 'Claritin', 'Ethanol', 'Warfarin', 'THC'];
  List<String> routes = ['IV', 'Oral', 'Topical', 'Sublingual', 'Inhaled'];
  TextEditingController dateManufacturedController = TextEditingController();

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
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: <Widget> [
                                            Text(
                                              "Date Manufactured",
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
                                          controller: dateManufacturedController,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.green
                                              )
                                            ),
                                            hintText: 'MM/DD/YYYY',
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
                                        items: routes.map(
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
                                          controller: dateManufacturedController,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.green
                                              )
                                            ),
                                            hintText: 'HH:MM',
                                          ),
                                        ),
                                      ),
                                    ]
                                  ),
                                )
                              )
                            ]
                          )
                        ]
                      )
                    )
                  ),
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
                                        padding: EdgeInsets.only(top: 0),
                                        child: Row(
                                          children: <Widget> [
                                            Text(
                                              "Time of Last Meal",
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
                                          controller: dateManufacturedController,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.green
                                              )
                                            ),
                                            hintText: 'HH:MM',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: <Widget> [
                                            Text(
                                              "Last Meal Contained",
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
                                          controller: dateManufacturedController,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.green
                                              )
                                            ),
                                            hintText: 'Pasta, Chicken, Broccoli ...',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: <Widget> [
                                            Text(
                                              "Last Meal Calories",
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
                                          controller: dateManufacturedController,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.green
                                              )
                                            ),
                                            hintText: '750',
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
                                              "Time of Next Meal",
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
                                          controller: dateManufacturedController,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.green
                                              )
                                            ),
                                            hintText: 'HH:MM',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: <Widget> [
                                            Text(
                                              "Next Meal Contains",
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
                                          controller: dateManufacturedController,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.green
                                              )
                                            ),
                                            hintText: 'Pasta, Chicken, Broccoli ...',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: <Widget> [
                                            Text(
                                              "Next Meal Calories",
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
                                          controller: dateManufacturedController,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.green
                                              )
                                            ),
                                            hintText: '750',
                                          ),
                                        ),
                                      ),
                                    ]
                                  ),
                                )
                              )
                            ]
                          )
                        ]
                      )
                    )
                  ),
                ]
              )
            ),
            Expanded(
              child: Card(
                child: TimeSeriesRangeAnnotationMarginChart.withSampleData()
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
