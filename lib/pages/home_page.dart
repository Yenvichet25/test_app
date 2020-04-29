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
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            floating: true,
            pinned: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sort,
                color: Colors.black,
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/images/userbg1.webp'),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Explore',
                  style: TextStyle(
                    fontFamily: "Righteous",
                    fontSize: 28,
                  ),
                )),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _BuildHeaderDelegate(
                minHeight: 40,
                maxHeight: 40,
                child: PageTabbar(size: size, tabController: tabController)),
          ),
          SliverFillRemaining(
              child: PageTabbarView(size: size, tabController: tabController))
        ],
      ),
    );
  }
}

class PageTabbarView extends StatelessWidget {
  const PageTabbarView({
    Key key,
    @required this.size,
    @required this.tabController,
  }) : super(key: key);

  final Size size;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class PageTabbar extends StatelessWidget {
  const PageTabbar({
    Key key,
    @required this.size,
    @required this.tabController,
  }) : super(key: key);

  final Size size;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
    );
  }
}

class _BuildHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _BuildHeaderDelegate(
      {@required this.minHeight,
      @required this.maxHeight,
      @required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
