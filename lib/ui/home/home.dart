import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.cyan.shade100,
      body: SafeArea(
        child: Container(
          height: height,
            width: width,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Pros Available near you",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (c, i) {
                      return Container(
                        height: height/1.77,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                          height: 180,
                          width: width,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/background2.png'),
                              fit: BoxFit.fill,
                            ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    child: const Text("View Profile"),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 15,),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 13.0
                                        )
                                      ),
                                      child: const CircleAvatar(
                                        radius: 50,
                                        foregroundImage: AssetImage("assets/images/profile_image.jpg"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 30, bottom: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("James",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),
                                    ),
                                    Text("@jamescutz"),
                                  ],
                                )
                            ),
                            const Divider(),
                            Container(
                              padding: const EdgeInsets.symmetric( vertical: 20),
                              height: 70,
                              color: Colors.grey.shade100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Experience".toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.grey.shade700
                                        ),
                                      ),
                                      const Text("3 years",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Bookings".toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.grey.shade600
                                        ),
                                      ),
                                      const Text("1230",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Retention Rate".toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          color: Colors.grey.shade600
                                        ),
                                      ),
                                      const Text("97.65%",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 105,
                              // color: Colors.grey,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset("assets/images/haircut1.jpeg"),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset("assets/images/haircut2.jpg"),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset("assets/images/haircut3.jpg"),
                                  ),
                                ],
                              ),
                            ),
                            const Divider()
                          ],
                        ),
                      );
                    },
                  ),
              )
            ],
          ),
        ),
      )
    );
  }
}
