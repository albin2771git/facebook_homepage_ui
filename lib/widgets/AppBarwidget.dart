import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

class AppBarwidget extends StatefulWidget {
  const AppBarwidget({super.key});

  @override
  State<AppBarwidget> createState() => _AppBarwidgetState();
}

class _AppBarwidgetState extends State<AppBarwidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        toolbarHeight: 60,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "facebook",
            style: GoogleFonts.poppins(
                fontSize: 21, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 10),
            child: CircleAvatar(
                backgroundColor: Colors.black12,
                child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 10),
            child: CircleAvatar(
                backgroundColor: Colors.black12,
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 20),
            child: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Container(
                  child: Stack(
                    children: [
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.message,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      Positioned(
                        bottom: 9,
                        right: 1,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          maxRadius: 10,
                          minRadius: 5,
                          child: Text(
                            '9+',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.video_collection,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.local_print_shop,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Tab(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 4,
                    child: CircleAvatar(
                      minRadius: 5,
                      maxRadius: 10,
                      backgroundColor: Colors.red,
                      child: Text(
                        "6",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            CircleAvatar(
              minRadius: 10,
              maxRadius: 15,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=600"),
            )
          ],
        ));
  }
}
