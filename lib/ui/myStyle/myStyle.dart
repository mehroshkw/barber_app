import 'package:flutter/material.dart';

class MyStyle extends StatefulWidget {
  const MyStyle({Key? key}) : super(key: key);

  @override
  State<MyStyle> createState() => _MyStyleState();
}

class _MyStyleState extends State<MyStyle> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        centerTitle: true,
        title: Text("My Style", style: TextStyle(color: Colors.black),),
        // leading:  const BackButton(
        //   color: Colors.black,
        // ),
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        height: height/5.5,
        width: width/2.5,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt, size: 40, color: Colors.grey.shade800,))),
            Text("Add images",
            style: TextStyle(
              fontSize: 16
            ),
            )
          ],
        ),
      ),
    );
  }
}
