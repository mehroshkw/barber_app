import 'package:barber_app/ui/otp/otpVerification.dart';
import 'package:flutter/material.dart';

class ChangeLocationScreen extends StatefulWidget {
  const ChangeLocationScreen({Key? key}) : super(key: key);

  @override
  State<ChangeLocationScreen> createState() => _ChangeLocationScreenState();
}

class _ChangeLocationScreenState extends State<ChangeLocationScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0.4,
      centerTitle: true,
      title: Text("Location", style: TextStyle(color: Colors.black),),
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
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: height*0.01,),
            Container(
              height: 50,
              alignment: Alignment.center,
              padding:  const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                  border: Border.all(
                      color: Colors.grey.shade300
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 5),
                    )
                  ]
              ),
              child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.location_on, color: Colors.grey.shade400,)),
                    hintText: "Pin point your location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(height: height*0.03,),
            Container(
              height: 50,
              alignment: Alignment.center,
              padding:  const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                  border: Border.all(
                      color: Colors.grey.shade300
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 5),
                    )
                  ]
              ),
              child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey.shade400,)),
                    hintText: "Search your location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
