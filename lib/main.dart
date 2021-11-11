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
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("My Profile", style: TextStyle(color: Colors.white, fontSize: 20us, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                padding: EdgeInsets.all(12.0),
                height: 120,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset("assets/images/accountimg.png"),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Davies Hafis", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Text("tejnik2007@yahoo.co.uk", style: TextStyle(fontSize: 12,),),
                        Text("University of Lagos", style: TextStyle(fontSize: 12,),),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text("General", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding:EdgeInsets.only(bottom: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: ListTile(
                    title: Text("Edit profile" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    leading: Icon(Icons.person,color: Colors.indigo,size: 20,),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20,),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(bottom: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: ListTile(
                    title: Text("Badges" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    leading: Icon(Icons.badge,color: Colors.indigo,size: 20,),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20,),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(bottom: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: ListTile(
                    title: Text("Study Goal" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    leading: Icon(Icons.add_circle_outline_outlined,color: Colors.indigo,size: 20,),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20,),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(bottom: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: ListTile(
                    title: Text("Focus Mode" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    leading: Icon(Icons.notifications_off,color: Colors.indigo,size: 20,),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20,),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(bottom: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: ListTile(
                    title: Text("School Schedule" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    leading: Container(
                        child: Icon(Icons.refresh_outlined,color: Colors.white,size: 15,),
                        padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        shape: BoxShape.circle,
                      ),

                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20,),
                  ),
                ),
              ),
            ]
          ),
        )
      ),
    );
  }
}
