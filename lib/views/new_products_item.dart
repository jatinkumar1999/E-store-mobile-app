import 'package:flutter/material.dart';

class NewProductItem extends StatefulWidget {
  NewProductItem({Key key}) : super(key: key);

  @override
  _NewProductItemState createState() => _NewProductItemState();
}

class _NewProductItemState extends State<NewProductItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Hero(
                  tag: "assets/headphone.png",
                  child: Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Container(
                      height: 320,
                      width: 355,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/headphone.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "New Products",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey[400],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "HeadPhone x1",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_purple500_outlined,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_purple500_outlined,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_purple500_outlined,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_purple500_outlined,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_purple500_outlined,
                          color: Colors.amber,
                          size: 15,
                        ),
                        SizedBox(width: 3),
                        Text("5 (25 reviews)"),
                      ],
                    ),
                    Text(
                      "\$ 600",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Descriptions",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "With warm  & smooth sound , exceptional   life  and confortable design , entry-level wireless  headphones don\'t get better then this. ",
                  style: TextStyle(
                    color: Colors.grey[400],
                    height: 2,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 60,
                    width: 180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange[900],
                          Colors.orange[300],
                        ],
                      ),
                    ),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
