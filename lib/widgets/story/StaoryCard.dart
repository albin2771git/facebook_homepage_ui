import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryCard extends StatelessWidget {
  const StoryCard(
      {super.key,
      required this.Storyimg,
      required this.Profileimg,
      required this.StoryHolder});
  final String Storyimg;
  final String Profileimg;
  final String StoryHolder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.27,
        height: MediaQuery.of(context).size.height * 0.22,
        decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(Storyimg)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: CircleAvatar(
                maxRadius: 23,
                minRadius: 13,
                backgroundColor: Colors.blue,
                child: CircleAvatar(backgroundImage: NetworkImage(Profileimg)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  StoryHolder,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
