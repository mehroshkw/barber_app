import 'package:barber_app/ui/settings/changePassword.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        centerTitle: true,
        title: Text("Setting", style: TextStyle(color: Colors.black),),
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
      body: Container(
        child: Column(
          children: [
            InkWell(
              onTap: (){},
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    alignment: Alignment.center,
                    width: width,
                    height: height*0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("App Notifications",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      Switch(
                        value: light,
                        activeColor: Colors.blue.shade600,
                        onChanged: (bool value) {
                          setState(() {
                            light = value;
                          });
                        },
                      ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangePassword()));
              },
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    alignment: Alignment.center,
                    width: width,
                    height: height*0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Change password",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20,))
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
