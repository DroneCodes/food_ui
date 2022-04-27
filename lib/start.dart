import 'package:flutter/material.dart';
import 'package:food_ui/menupage/menu.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(128, 229, 5, 219),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: size.height * 0.4,
                child: Image.asset("assets/images/bibimbap.png", height: size.height * 0.5,),
              ),

              SizedBox(
                height: 60,
              ),
              Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text("Enjoy", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.normal),),

                     SizedBox(
                       height: 20,
                     ),
                     Text("Your Food", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.normal),),
                   ],
                 ),
              ),

              SizedBox(
                height: 50,
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 60,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FlatButton(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      color: Colors.white,
                      onPressed: () {
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) {
                               return MenuPage();
                             }));
                      },
                      child:
                      const Text("Get Started",
                        style: TextStyle(color: Color.fromARGB(
                            128, 177, 13, 170), fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
