import 'package:barber_app/ui/bookings/bookNow.dart';
import 'package:barber_app/ui/chat/chat.dart';
import 'package:barber_app/ui/favourites/fav.dart';
import 'package:barber_app/ui/home/home.dart';
import 'package:barber_app/ui/profile/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  final bottomNavigationKey = GlobalKey<CurvedNavigationBarState>();
  final items = <Widget>[
      Icon(Icons.home_outlined),
      Icon(Icons.favorite_border),
      Icon(Icons.calendar_today_outlined),
      Icon(Icons.message_outlined),
      Icon(Icons.person_outline)

  ];

  List<Widget> screenList =[
    Home(),
    Favourits(),
    BookNow(),
    Chat(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // backgroundColor: Colors.blueGrey,
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        key: bottomNavigationKey,
        onTap: (index) => setState(() {
          this.index = index;
          // final navigationState = bottomNavigationKey.currentState!;
          // navigationState.setPage(index);
        }),

        index: index,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blue.shade600,
        color: Colors.white,
        items: [
          Icon(Icons.home_outlined, color: index==0 ? Colors.white : Colors.blue),
          badges.Badge(
              badgeContent: Text('3'),
              child: Icon(Icons.favorite_border, color: index==1 ? Colors.white : Colors.blue)),
          Icon(Icons.calendar_today_outlined, color: index==2 ? Colors.white : Colors.blue),
          Icon(Icons.message_outlined, color: index==3 ? Colors.white : Colors.blue),
          Icon(Icons.person_outline, color: index==4 ? Colors.white : Colors.blue)

        ],
      ),
      body: screenList[index]
    );
  }
}
