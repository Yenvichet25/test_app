import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shoes_app/pages/product_banner.dart';

class NikePage extends StatefulWidget {
  @override
  _NikePageState createState() => _NikePageState();
}

class _NikePageState extends State<NikePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height / 2.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [Color(0xffF07A80), Color(0xffDE4149)],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 8)
                          ]),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 10,
                              left: 10,
                              bottom: 0,
                              right: 0,
                              child: Text(
                                "01",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                          Positioned(
                            top: 50,
                            right: 0,
                            left: 0,
                            child: Container(
                              width: size.width,
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("asset/images/shoes2.png"))),
                            ),
                          ),
                          Positioned(
                            top: 215,
                            left: 20,
                            right: 0,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Nike Air Vapor",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "Montserrat"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$365",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "Montserrat"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: RawMaterialButton(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            ProductBanner()
          ],
        ),
      ),
    );
  }
}
