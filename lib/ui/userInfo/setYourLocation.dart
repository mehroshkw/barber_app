import 'package:barber_app/ui/otp/otpVerification.dart';
import 'package:flutter/material.dart';

class SetYourLocationScreen extends StatefulWidget {
  const SetYourLocationScreen({Key? key}) : super(key: key);

  @override
  State<SetYourLocationScreen> createState() => _SetYourLocationScreenState();
}

class _SetYourLocationScreenState extends State<SetYourLocationScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  child: const Text("Set Your Location",
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
                  child: Text("We need to know your location to \nsuggest nearby shops",
                    style: TextStyle(
                        color: Colors.grey.shade600
                    ),
                  ),
                )),
            SizedBox(height: height*0.04,),
            Container(
              height: 50,
              alignment: Alignment.center,
              padding:  const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                  // color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                  border: Border.all(
                      color: Colors.grey.shade300
                  )
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
                // color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                  border: Border.all(
                      color: Colors.grey.shade300
                  )
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
            Expanded(child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.3,
                    // height: height*0.045,
                    height: 40,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OTPVerificationScreen()));
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OTPVerificationScreen(
                      )));
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
            ))
          ],
        ),
      ),
    );
  }
}
