import 'package:e_store_mobile_app/modals/newproducts.dart';
import 'package:e_store_mobile_app/views/new_products_item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedTabBar = "All Products";
  List<NewProducts> products = [];
  @override
  void initState() {
    products = newProducts;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              SizedBox(width: 6),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/jk.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: 12,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.orange[900],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
            ]),
        body: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 270,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      )),
                  child: ListView(
                    primary: false,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 22, right: 22),
                        height: 150,
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildAdvertisementTile("HeadPhone X1"),
                            buildAdvertisementTile("HeadPhone X1"),
                            buildAdvertisementTile("HeadPhone X1"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Our Products",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.white,
                                    Colors.orange
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      TabBar(
                          indicatorColor: Colors.transparent,
                          isScrollable: true,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey[400],
                          tabs: [
                            Text("All products"),
                            Text("Recommended"),
                            Text("New products"),
                            Text("Popular")
                          ]),
                      SizedBox(height: 25),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 170,
                        child: TabBarView(
                          children: [
                            buildTabBarView(),
                            buildTabBarView(),
                            buildTabBarView(),
                            buildTabBarView(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 200,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height - 270,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 270,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 270,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 250,
                          margin: EdgeInsets.only(left: 20, right: 45),
                          child: ListView(
                            children: [
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Special for you",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    "see All",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Stack(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.grey[400],
                                          width: 3,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                topLeft: Radius.circular(20),
                                              ),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    "assets/mouse.png"),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Wireless Mouse Z123",
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  "\$ 280",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildTabBarView() {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          builTabBaritems("assets/hp.jpg", "Remote 230", 100),
          builTabBaritems("assets/rg.jpg", "Boat 230", 120),
          builTabBaritems("assets/rg1.jpg", "Boat 230", 250),
          builTabBaritems("assets/rg3.jpg", "Boat 230", 80),
        ],
      ),
    );
  }

  builTabBaritems(String image, text, int price) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 25),
          width: 140,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6, left: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text),
                    SizedBox(height: 3),
                    Text(
                      "\$ $price",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 25,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildAdvertisementTile(String prdName) {
    return Container(
      height: 140,
      width: 300,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Hero(
            tag: "assets/headphone.png",
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/headphone.png"),
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                height: 20,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "New Products",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                prdName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 13),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewProductItem()));
                },
                child: Container(
                  height: 30,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: LinearGradient(colors: [
                      Colors.orange,
                      Colors.white,
                      Colors.orange,
                    ]),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
