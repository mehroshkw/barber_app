import 'package:barber_app/ui/bottomNavigationBar/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: height*0.11,),
            Image.asset("assets/images/vfshield.png",
            height: height*0.15,
            ),
            SizedBox(height: height*0.02,),
            Container(
                width: width,
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text("OTP Verifiction",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )),
            const SizedBox(height: 10,),
            Container(
                width: width,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text("Enter the OTP sent to \n      +92345*******",
                    style: TextStyle(
                        color: Colors.grey.shade600
                    ),
                  ),
                )),
          //  OTP inputs
            VerificationCode(
              textStyle: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Theme.of(context).primaryColor),
              keyboardType: TextInputType.number,
              underlineColor: Colors
                  .blue.shade600,
              length: 4,
              cursorColor:
              Colors.blue,
              // clearAll: Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     'clear all',
              //     style: TextStyle(
              //         fontSize: 14.0,
              //         color: Colors.blue[700]),
              //   ),
              // ),
              margin: const EdgeInsets.all(3),
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Center(
            //     child: _onEditing
            //         ? const Text('Please enter full code')
            //         : Text('Your code: $_code'),
            //   ),
            // )
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't recieve the OTP?",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                ),
                TextButton(onPressed: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNav()));
                }, child: Text("Resend OTP",
                  style: TextStyle(
                      color: Colors.red,
                    fontWeight: FontWeight.bold
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: width*0.6,
              // height: height*0.06,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNav()));
                }, child: const Text("Verify"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue.shade600),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
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
