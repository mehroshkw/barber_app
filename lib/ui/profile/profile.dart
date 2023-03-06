import 'package:barber_app/ui/settings/settings.dart';
import 'package:barber_app/ui/userInfo/setYourLocation.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../aboutUs/aboutApp.dart';
import '../myStyle/myStyle.dart';
import '../userInfo/changeLocation.dart';
import 'editProfile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title:  Row(
          children: [
            Image.asset("assets/images/demoPro.png", height: 50, width: 50,),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("muhammed ahmed",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text("03211234567",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile()));
            }, icon: Icon(Icons.edit_outlined, color: Colors.black,))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric( vertical: 18, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text("Profile",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: width*0.06,),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade100,
                      Colors.white,
                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.person_outline),
                  Expanded(child: Text("My Style")),
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyStyle()));
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.03),
            const Text("Services",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: width*0.04),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade100,
                      Colors.white,
                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.location_on_outlined),
                  ),
                  Expanded(child: Text("Address")),
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangeLocationScreen()));
                    },
                    icon: Icon(Icons.arrow_forward_ios, size: 20,),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.04,),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade100,
                      Colors.white,
                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Icon(Icons.payment),
                  ),
                  Expanded(child: Text("Payment Methods")),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios, size: 20,),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.04,),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade100,
                      Colors.white,
                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Icon(Icons.settings_outlined),
                  ),
                  Expanded(child: Text("Settings")),
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
                    },
                    icon: Icon(Icons.arrow_forward_ios, size: 20,),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.04),
            const Text("Analytics",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: width*0.04),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade100,
                      Colors.white,
                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.sports_volleyball),
                  ),
                  Expanded(child: Text("About")),
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => About()));

                    },
                    icon: Icon(Icons.arrow_forward_ios, size: 20,),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.04,),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade100,
                      Colors.white,
                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.star_border_outlined),
                  ),
                  Expanded(child: Text("Rate this app")),
                  IconButton(
                    onPressed: (){
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Rate this App'),
                          content: const Text('If you like this app please take a moment to rate it on playstore'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'LATER'),
                              child: const Text('LATER'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'RATE APP'),
                              child: const Text('RATE APP'),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios,  size: 20,),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.04,),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade100,
                      Colors.white,
                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Icon(Icons.share_outlined),
                  ),
                  Expanded(child: Text("Share")),
                  IconButton(
                    onPressed: (){
                      _onShareWithEmptyFields(context);
                    },
                    icon: Icon(Icons.arrow_forward_ios, size: 20,),
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.04,),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade100,
                      Colors.white,
                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.logout),
                  ),
                  Expanded(child: Text("Logout")),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios, size: 20,),
                  ),
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
  _onShareWithEmptyFields(BuildContext context) async {
    await Share.share("Applinkhere");
  }

}


//https://medium.flutterdevs.com/share-data-to-another-application-in-flutter-6c92cec275e6#:~:text=Create%20a%20new%20dart%20file,dart%20inside%20the%20lib%20folder.&text=In%20this%20screen%2C%20we%20will,an%20application%20to%20share%20it.
//for share app functionality medium article