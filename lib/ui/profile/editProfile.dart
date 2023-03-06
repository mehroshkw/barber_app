import 'package:barber_app/ui/userInfo/setYourLocation.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        centerTitle: true,
        title: Text("Edit Profile", style: TextStyle(color: Colors.black),),
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: height*0.01,),
              SizedBox(height: height*0.25,
                  width: width*0.45,
                  child: Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.none,
                    children:  [
                      CircleAvatar(
                        // backgroundImage: AssetImage("assets/images/demoPro.png",),
                        backgroundColor: Colors.grey,
                        child: ClipRRect(
                          child: Image.asset("assets/images/demoPro.png"),
                        ),
                      ),
                      Positioned(
                        right: 12,
                        bottom: 30,
                        child: SizedBox(height: 50, width: 50,
                            child: CircleAvatar(
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
                            )
                        ),
                      )
                    ],
                  )
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
                    // validator: (val) => val!.length < 6 ? 'Password too short.' : null,
                    decoration:   InputDecoration(
                      hintText: "Name",
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
                height: 45,
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
                    // validator: (val) => val!.length < 6 ? 'Password too short.' : null,
                    decoration:   InputDecoration(
                      hintText: "Email",
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
                  }, child: const Text("Save Changes"),
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
      ),
    );
  }
}
