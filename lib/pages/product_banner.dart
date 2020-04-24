import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shoes_app/model/swiper_images.dart';

class ProductBanner extends StatefulWidget {
  @override
  _ProductBannerState createState() => _ProductBannerState();
}

class _ProductBannerState extends State<ProductBanner> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: size.width,
            height: 250,
            child: Stack(
              children: <Widget>[
                Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      swiper[index].swipername,
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: 3,
//                  pagination: SwiperPagination(),
                  autoplay: true,
                ),
                Positioned(
                  top: 140,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                      width: size.width,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Popular Nike Shoes",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Righteous"
                          ),),
                          SizedBox(height: 10,),
                          Container(
                            width: 230,
                            child: Text("He was among a group of more than one hundred Native Hawaiian and Hawaii-born combatants.",style: TextStyle(
                              color: Colors.white
                            ),),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
