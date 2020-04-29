import 'package:flutter/material.dart';
import 'package:shoes_app/model/detail_product.dart';


class NikeDetails extends StatefulWidget {
  @override
  _NikeDetailsState createState() => _NikeDetailsState();
}

class _NikeDetailsState extends State<NikeDetails> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            ProductDetails(size, context, index),
          ],
        ));
  }

  Stack ProductDetails(Size size, BuildContext context,int index) {
    return Stack(
            children: <Widget>[
               Container(
                    width: size.width,
                    height: size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF696D77), Color(0xFF292C36)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          tileMode: TileMode.clamp)),
                    padding: EdgeInsets.only(bottom: 0,top: 90),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: size.width,
                            height: size.height*0.4,
//            color: Colors.redAccent,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    child: Image.asset("asset/images/shoes11.png",fit: BoxFit.contain,),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  top: 0,
                                  left: 10,
                                  right: 10,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.black26, shape: BoxShape.circle),
                                        child: IconButton(icon:Icon(Icons.wallpaper,size: 18,), onPressed: () {
                                          print("1");
                                        },)
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Rating",style: TextStyle(
                                  color: Color(0xFF949598),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat")),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(width: 8,),
                                  Icon(Icons.star, color: Color(0xFFFFE600)),
                                  SizedBox(width: 5,),
                                  Text("4.5",style: TextStyle(
                                      color: Color(0xFFFFE600),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                  SizedBox(width: 5,),
                                  Text("(378 People)",
                                      style: TextStyle(color: Colors.white, fontSize: 11.0))
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text("Product Description",style: TextStyle(
                                  color: Color(0xFF949598),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat")),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.only(left: 26,right: 18),
                                child: Text(productDetail[index].desc,maxLines: 2,overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat"),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                ),

              AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: () {
                    Navigator.pop(context);
                },
                ),
                title: Text("Energy Cloud",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat")),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          );
  }
}

