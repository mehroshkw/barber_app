import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        centerTitle: true,
        title: Text("About", style: TextStyle(color: Colors.black),),
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),
      body: Column(children: [
        // SizedBox(height: height*0.02,),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerLeft,
            width: width,
            height: height*0.06,
            child: Text("Terms and Conditions",
            style: TextStyle(
              fontSize: 16,
            ),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerLeft,
            width: width,
            height: height*0.06,
            child: Text("Privacy Policy",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerLeft,
            width: width,
            height: height*0.06,
            child: Text("Open Source License",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerLeft,
            width: width,
            height: height*0.06,
            child: Text("Diagnostic Report",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.center,
            width: width,
            height: height*0.06,
            child: Text("Reset Installation ID",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text("The Barber app installation ID is used for analytics and \ntroubleshooting. it is not associated with you, inless you \ncreate an account with your email address or third-party \nservice",
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey
        ),
        ),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text("Version Info", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
          ),
          Text("1.0.0.0.0.0.0.0",
            style: TextStyle(
                fontSize: 16
            ),
          )
        ],))
      ],),
    );
  }
}
