import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/model/category.dart';
import 'package:shoes_app/model/listview_images.dart';
import 'package:shoes_app/pages/nike_details_page.dart';

class NikePage extends StatefulWidget {
  @override
  _NikePageState createState() => _NikePageState();
}

class _NikePageState extends State<NikePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(child: TopShoes(size: size)),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Pop Shoes",
                  style: TextStyle(fontFamily: "Righteous", fontSize: 28),
                ),
                IconButton(
                  icon: Icon(
                    Icons.clear_all,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
        ShoseGrid(size)
      ],
    );
  }

  SliverPadding ShoseGrid(Size size) {
    return SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25,
              crossAxisSpacing: 30,
              childAspectRatio: 0.8),
          delegate: SliverChildBuilderDelegate((_, int index) {
            return Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,5),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.5)
                  )
                ],
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 0,left: 20),
                      width: size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
//                          color: Colors.blue,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Image.asset(
                              "asset/images/shoes3.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 10,
                            child: RichText(
                              text: TextSpan(
                                text: "\$",style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                                children: [
                                  TextSpan(
                                    text: "399",style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,fontWeight: FontWeight.bold
                                  )
                                  )
                                ]
                              ),
                            )
                          )
                        ],
                      )),
                  SizedBox(height: 10,),
                  Container(
                    width: size.width,
//                    color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Nike",style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                            Row(
                              children: <Widget>[
                                 InkWell(
                                   onTap: (){
                                     print("1");
                                   },
                                   child: Stack(
                                     children: <Widget>[
                                       Container(
                                         height: 30,
                                         width: 30,
                                         decoration: BoxDecoration(
                                           color: Colors.grey.withOpacity(0.3),
                                           shape: BoxShape.circle
                                         ),
                                         child: Icon(Icons.favorite_border),
                                       ),
                                       Positioned(
                                         top: 0,
                                         left: 5,
                                         right: 5,
                                         child: Container(
                                           width: 30,
                                           height:30,
                                           decoration: BoxDecoration(
                                               color: Colors.white,
                                               shape: BoxShape.circle
                                           ),
                                           child: Icon(Icons.favorite_border,color: Colors.black,size: 14,),
                                         ),
                                       )
                                     ],
                                   ),
                                 )
                              ],
                            )
                          ],
                        ),
                        Text("The Off-White X Nike",style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                        ),),
                        SizedBox(height: 4,),
                        Text("Air Vapor",style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      padding: EdgeInsets.only(bottom: 5),
                      child: RawMaterialButton(
                        splashColor: Colors.grey,
                        child: Text("Add Cart",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600
                        ),), onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            );
          }, childCount: 16),
        ),
      );
  }
}

class TopShoes extends StatelessWidget {
  const TopShoes({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (_)=>NikeDetails()));
      },
      child: Container(
        height: size.height / 2.4,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          physics:BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: colors[index].colorname,
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5), blurRadius: 8)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 10,
                        left: 10,
                        bottom: 0,
                        right: 0,
                        child: Text(
                          numbershoes[index],
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Positioned(
                      top: 40,
                      right: 0,
                      left: 0,
                      child: Container(
                        width: size.width,
                        height: 180,
                        decoration: BoxDecoration(
//                        color: Colors.blue,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(itemNike[index].image))),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      right: 0,
                      bottom:5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            itemNike[index].brandname,
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
                            itemNike[index].price,
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
    );
  }
}
