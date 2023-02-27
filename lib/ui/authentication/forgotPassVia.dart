import 'package:barber_app/ui/authentication/resetPassword.dart';
import 'package:flutter/material.dart';

class ForgotPassViaScreen extends StatefulWidget {
  const ForgotPassViaScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassViaScreen> createState() => _ForgotPassViaScreenState();
}

class _ForgotPassViaScreenState extends State<ForgotPassViaScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          height: height,
          width: width,
          child: ListView(
            children: [
              SizedBox(
                height: height*0.07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: const Text("Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                  color: Colors.black,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("Select which contact details should \nwe use to reset your password",
                style: TextStyle(
                  color: Colors.grey.shade600
                ),
                ),
              ),
              SizedBox(height: height*0.03,),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.grey.shade200,
                        spreadRadius: 0,
                        blurRadius: 6,
                        offset: const Offset(0, 4)
                    ),
                  ],
                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child:  ListTile(
                    // tileColor: Colors.white,
                    title: Text('Via sms:',
                        style: TextStyle(
                          color: Colors.grey.shade600
                        ),),
                    subtitle: Text('*******92345',
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetPassword()));
                    },
                    // trailing: Icon(Icons.more_vert),
                    leading: Icon(Icons.message, color: Colors.blue.shade600, size: 40,),
                  ),
                ),
              ),
              SizedBox(height: height*0.015,),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                     BoxShadow(
                      color: Colors.grey.shade200,
                       spreadRadius: 0,
                       blurRadius: 6,
                       offset: const Offset(0, 4)
                    ),
                  ],
                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child:  ListTile(
                    // tileColor: Colors.white,
                    title: Text('Via email:',
                      style: TextStyle(
                          color: Colors.grey.shade600
                      ),),
                    subtitle: Text('*******@gmail.com',
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetPassword()));
                    },
                    // trailing: Icon(Icons.more_vert),
                    leading: Icon(Icons.email, color: Colors.blue.shade600, size: 40,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
