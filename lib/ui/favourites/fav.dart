import 'package:flutter/material.dart';

class Favourits extends StatefulWidget {
  const Favourits({Key? key}) : super(key: key);

  @override
  State<Favourits> createState() => _FavouritsState();
}

class _FavouritsState extends State<Favourits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        child: ListView(
          children: [
            ListTile(
              shape: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300
                ),
                top: BorderSide(
                    color: Colors.grey.shade300
                ),
              ),
              title: Text("Saved",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              subtitle: Text(
                "0 saved"
              ),
            ),
          ],
        ),
      )
    );
  }
}
