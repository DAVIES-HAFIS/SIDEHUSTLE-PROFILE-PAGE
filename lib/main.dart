import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Side Hustle Data Page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.pink,width: 1),
            ),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CircleAvatar(
                backgroundImage:
                AssetImage("assets/images/accountimg.png"),
                radius: 20,
              ),
              Text(
                'group2@sidehustle.com',
                style: TextStyle(color: Colors.white),
              ),
                Icon(Icons.message, color: Colors.white,),
              ],
          ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/accountimg.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("GROUP TWO SIDE HUSTLE \n  MOBILE DEV GROUP", style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 14),textAlign: TextAlign.center,),
                  SizedBox(
                    height: 10,
                  ),
                  Text("TEAM LEAD : SAMUEL",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.brown),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Email Address: group2@sidehustle.com ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black45),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Click on links below for more information on our social media pages",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),textAlign: TextAlign.center,),
                  Container(
                    height: 50,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white70,
                          shape: BoxShape.circle),
                          padding: EdgeInsets.all(10) ,
                            child: Image.asset("assets/images/google.png",width: 15, height: 30,)),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                shape: BoxShape.circle),
                            padding: EdgeInsets.all(10) ,
                            child: Image.asset("assets/images/facebook.png",width: 15, height: 30,color: Colors.blue,)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
