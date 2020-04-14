import 'package:flutter/material.dart';
import 'package:web/screens/screens.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  PageController _pageController = PageController(initialPage: 0, viewportFraction: 1.0);
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        textTheme: Theme.of(context).textTheme.apply(
           bodyColor: Colors.black,
           displayColor: Colors.black,
        ),
        title: Row(
          children: <Widget>[
            Image(
              image: AssetImage('assets/banner1.png'),
              fit: BoxFit.contain,
              height: 50,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Help"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Contact Us"),
            ),
          ]
        ),
        bottom: TabBar(
          controller: _tabController,
          onTap: (tabIndex) {
            _pageController.jumpToPage(tabIndex);
          },
          labelStyle: TextStyle(
            fontSize: 30,
          ),
          indicatorColor: Colors.green,
          labelColor: Colors.black,
          labelPadding: EdgeInsets.all(10),
          tabs: [
            Text("Patients"),
            Text("Dose"),
            Text("Drugs")
          ],
        )
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[PatientsScreen(), DoseScreen(), DrugsScreen()],
        scrollDirection: Axis.horizontal,
      )
    );
  }
}
