import 'package:barber_app/ui/authentication/login.dart';
import 'package:barber_app/ui/userInfo/uploadProfilePic.dart';
import 'package:flutter/material.dart';

class SignupCustomer extends StatefulWidget {
  const SignupCustomer({Key? key}) : super(key: key);

  @override
  State<SignupCustomer> createState() => _SignupCustomerState();
}

class _SignupCustomerState extends State<SignupCustomer> {
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
                  height: height* 0.07,
                ),
                Container(
                    width: width,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: const Text("Create your Account",
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
                            hintText: "First Name",
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
                          decoration:   const InputDecoration(
                            // suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye)),
                            hintText: "Last Name",
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
                    const SizedBox(
                      height: 20,
                    ),
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
                    SizedBox(
                      height: 20,
                    ),
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
                        keyboardType: TextInputType.phone,
                          decoration:  const InputDecoration(
                            hintText: "Phone Number",
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
                      width: width/1.4,
                      // height: height*0.06,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => UploadProfilePic()));
                      }, child: const Text("Signup"),
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
                        Text("Already have an account?"),
                        TextButton(onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
                        }, child: Text("Login",
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
