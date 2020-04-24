import 'package:flutter/material.dart';
import 'package:shoes_app/pages/nike_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 4, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.sort),
                    onPressed: () {},
                  ),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage:
                            AssetImage('asset/images/userbg1.webp'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Explore",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Righteous",
//                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: size.width,
              height: 40,
              child: TabBar(
                labelStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: "Righteous",
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 18,
                  fontFamily: "Montserrat",
                ),
                isScrollable: true,
                indicatorColor: Colors.white,
                labelColor: Colors.black,
                controller: tabController,
                tabs: <Widget>[
                  Text("Nike"),
                  Text("Adidas"),
                  Text("Converse"),
                  Text("Vans")
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              child: TabBarView(controller: tabController, children: [
                NikePage(),
                Container(
                  color: Colors.yellowAccent,
                ),
                Container(
                  color: Colors.redAccent,
                ),
                Container(
                  color: Colors.cyanAccent,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
