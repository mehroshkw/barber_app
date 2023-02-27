import 'package:barber_app/ui/authentication/signupBarber.dart';
import 'package:barber_app/ui/authentication/signupCustomer.dart';
import 'package:flutter/material.dart';

class UserRole extends StatefulWidget {
  const UserRole({Key? key}) : super(key: key);

  @override
  State<UserRole> createState() => _UserRoleState();
}

class _UserRoleState extends State<UserRole> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(height: height*0.23,),
            Image.asset("assets/images/logolight.png", height: 130, width: 130,),
            SizedBox(height: 25,),
            Container(
              width: width/1.1,
              // height: height*0.07,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupCustomer()));
              }, child: const Text("Customer"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue.shade600),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.blue.shade600)
                          )
                      )
                  )
              ),
            ),
            SizedBox(height: 16,),
            Container(
              width: width/1.1,
              // height: height*0.07,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupBarber()));
                }, child:  Text("Barber"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue.shade600),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.blue.shade600)
                          )
                      )
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
