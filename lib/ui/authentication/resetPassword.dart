import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _obscureText = true;
  bool _obscureText2 = true;

  late String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;

    });
  }
  void _toggle2() {
    setState(() {
      _obscureText2 = !_obscureText2;
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
                  height: height*0.1,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: const Text("Reset your password \nhere",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 29,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Text("Set your new password",
                    style: TextStyle(
                        color: Colors.grey.shade600
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.03,
                ),
                Form(child: Column(
                  children: [
                    Container(
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
                            hintText: "New Password",
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
                    const SizedBox(height: 20,),
                    Container(
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
                        obscureText: _obscureText2,
                          decoration:   InputDecoration(
                            suffixIcon: IconButton(onPressed: (){
                                _toggle2();
                              }, icon:  Icon(
                                _obscureText2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey.shade700,
                              ),),
                                hintText: "Confirm Password",
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
                      height: height*0.04,
                    ),
                    Container(
                      width: width/1.4,
                      // height: height*0.06,
                      height: 50,
                      child: ElevatedButton(onPressed: (){}, child: const Text("Confirm"),
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
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
