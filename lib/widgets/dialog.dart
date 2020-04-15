import 'package:flutter/material.dart';

Future openNewPatientDialog(BuildContext context) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      TextEditingController nameController = TextEditingController();
      TextEditingController sexController = TextEditingController();
      TextEditingController birthdayController = TextEditingController();
      TextEditingController weightController = TextEditingController();
      TextEditingController bodyFatController = TextEditingController();
      return Center(
        child: Container(
          height: MediaQuery.of(context).size.width*0.3,
          width: MediaQuery.of(context).size.width*0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: Text(
                            "New Patient",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            )
                          ),
                        )
                      )
                    )
                  ]
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: <Widget> [
                                        Text(
                                          "Name",
                                          style: TextStyle(
                                            fontSize: 20
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
                                        filled: true,
                                        fillColor: Colors.grey[100],
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        hintText: 'Name',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: <Widget> [
                                        Text(
                                          "Sex",
                                          style: TextStyle(
                                            fontSize: 20
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextField(
                                      controller: sexController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
                                        filled: true,
                                        fillColor: Colors.grey[100],
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        hintText: 'Sex',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: <Widget> [
                                        Text(
                                          "Birthday",
                                          style: TextStyle(
                                            fontSize: 20
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextField(
                                      controller: birthdayController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
                                        filled: true,
                                        fillColor: Colors.grey[100],
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: <Widget> [
                                        Text(
                                          "Weight",
                                          style: TextStyle(
                                            fontSize: 20
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextField(
                                      controller: weightController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
                                        filled: true,
                                        fillColor: Colors.grey[100],
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        hintText: 'Weight',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: <Widget> [
                                        Text(
                                          "Body Fat %",
                                          style: TextStyle(
                                            fontSize: 20
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextField(
                                      controller: bodyFatController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
                                        filled: true,
                                        fillColor: Colors.grey[100],
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        hintText: 'Body Fat %',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: <Widget> [
                                        Text(
                                          "Genetic Data (Coming Soon!)",
                                          style: TextStyle(
                                            fontSize: 20
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
                                        filled: true,
                                        enabled: false,
                                        fillColor: Colors.grey[100],
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        hintText: 'Genetic Data',
                                      ),
                                    ),
                                  ),
                                ]
                              ),
                            )
                          ),
                        ]
                      )
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                        onPressed: () {
                          var patient = {
                            "name": nameController.text,
                            "sex": sexController.text,
                            "birthday": birthdayController.text,
                            "weight": weightController.text,
                            "bodyFat": bodyFatController.text,
                            "geneticData": "N/A",
                            "dosage": "None"
                          };
                          Navigator.pop(context, patient);
                        },
                        child: const Text(
                          'Add',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(fontSize: 20)
                        ),
                      ),
                    )
                  ]
                ),
              ]
            )
          )
        )
      );
    },
  );
}
