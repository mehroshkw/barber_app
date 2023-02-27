import 'package:barber_app/ui/authentication/forgotPassVia.dart';
import 'package:barber_app/ui/authentication/userRole.dart';
import 'package:barber_app/ui/bottomNavigationBar/bottomNav.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  late String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: height* 0.13,
                ),
                Image.asset("assets/images/logolight.png", height:130, width: 130,),
                 SizedBox( height: height* 0.05,),
                Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: const Text("Login to your Account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    )),
                const SizedBox(height: 20,),
                Form(child: Column(
                  children: [
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      padding:  const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                          border: Border.all(
                              color: Colors.grey.shade300
                          )
                      ),
                      child: TextFormField(

                          decoration:  const InputDecoration(
                            hintText: "Email",
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
                    const SizedBox(height: 20,),
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      padding:  const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        border: Border.all(
                          color: Colors.grey.shade300
                        )
                      ),
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          // controller: _userPasswordController,
                          validator: (val) => val!.length < 6 ? 'Password too short.' : null,
                          onSaved: (val) => _password = val!,
                          obscureText: _obscureText,
                          decoration:   InputDecoration(
                            suffixIcon: IconButton(onPressed: (){
                              _toggle();
                            }, icon:  Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey.shade700,
                            ),),
                            hintText: "Password",
                            border: const OutlineInputBorder(
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
                     Container(
                       height: 30,
                        width: width,
                        alignment: Alignment.centerRight,
                        child:  TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassViaScreen()));
                          }, child: Text("Forgot Password?",
                              style: TextStyle(
                              color: Colors.blue.shade600
                          ),
                        ))
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width/1.4,
                      // height: height*0.06,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNav()));
                        }, child: const Text("Login"),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserRole()));
                        }, child: Text("Signup",
                        style: TextStyle(
                          color: Colors.blue.shade600
                        ),
                        ))
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
