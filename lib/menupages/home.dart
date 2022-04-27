import 'package:flutter/material.dart';
import 'package:food_ui/menupage/searchfield.dart';

class Home extends StatelessWidget {
  final ValueChanged<String> onChanged;

  Home({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text("Menu", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),),
                        SizedBox(
                          width: size.width * 0.5),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/bussiness-man.png"),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                SearchContainer(
                  child: TextFormField(
                    onChanged: onChanged,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.orangeAccent,
                      ),
                      hintText: "Search",
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white
                      ),
                      width: 60,
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color.fromARGB(128, 229, 5, 219),
                            ),
                            child: Image.asset("assets/images/diet.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("All", style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white
                      ),
                      width: 60,
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                            ),
                            child: Image.asset("assets/images/hamburger.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Burger", style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white
                      ),
                      width: 60,
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                            ),
                            child: Image.asset("assets/images/pizza.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Pizza", style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white
                      ),
                      width: 60,
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                            ),
                            child: Image.asset("assets/images/donut.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Desert", style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  child: Column(
                    children: <Widget>[
                      Text("Promotions",
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(128, 229, 5, 219),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: size.height * 0.3,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Today's Offer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                                    SizedBox(height: 5),
                                    Text("Free box of Fries", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                                    SizedBox(height: 5),
                                    Text("on all oders above \$150", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 18,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Popular", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),

                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              ],
            )
          ),
      ),
    );
  }
}
