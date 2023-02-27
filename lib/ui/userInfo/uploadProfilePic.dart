import 'package:barber_app/ui/userInfo/setYourLocation.dart';
import 'package:flutter/material.dart';

class UploadProfilePic extends StatefulWidget {
  const UploadProfilePic({Key? key}) : super(key: key);

  @override
  State<UploadProfilePic> createState() => _UploadProfilePicState();
}

class _UploadProfilePicState extends State<UploadProfilePic> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: height*0.12,),
            Container(
                width: width,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: const Text("Upload You Profile Photo",
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
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text("This data will be displayed in your account\nprofile for security",
                    style: TextStyle(
                        color: Colors.grey.shade600
                    ),
                  ),
                )),
            SizedBox(height: height*0.3,
            width: width*0.55,
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

            Expanded(
              child: Container(
                // color: Colors.indigoAccent,
                alignment: Alignment.bottomCenter,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    width: width*0.3,
                  // height: height*0.045,
                    height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SetYourLocationScreen()));
                  }, child: Text("Skip for now",
                  style: TextStyle(
                    color: Colors.blue.shade600,
                  ),
                  ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color: Colors.white)
                              )
                          )
                      )
                  ),
                ),
                    Container(
                      width: width*0.3,
                      // height: height*0.045,
                      height: 40,
                      child: ElevatedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SetYourLocationScreen()));
                      }, child: const Text("Next"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue.shade600),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.blue.shade600)
                                  ),
                              ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
