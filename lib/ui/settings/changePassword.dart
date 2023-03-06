import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        centerTitle: true,
        title: Text("Change Password", style: TextStyle(color: Colors.black),),
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
                  height: height*0.01,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: const Text("Enter Your New Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.02,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Text("Old Password",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.01,
                ),
                Form(child: Column(
                  children: [
                    Container(
                      height: 45,
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
                            // hintText: "New Password",
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
                      height: height*0.01,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                      child: Text("New Password",
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height*0.01,
                    ),
                    Container(
                      height: 45,
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
                            // hintText: "New Password",
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
                      height: height*0.01,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                      child: Text("Confirm Password",
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height*0.01,
                    ),
                    Container(
                      height: 45,
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
                            // hintText: "Confirm Password",
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
                      child: ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: const Text("Change Password"),
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
