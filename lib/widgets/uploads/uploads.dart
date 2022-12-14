import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageUploads extends StatelessWidget {
  const ImageUploads({
    super.key,
    required this.ProfileUploadimg,
    required this.ProfilUploadname,
    required this.ProfileUploadtime,
    required this.UploadImgdetail,
    required this.description,
    // required this.emoji1,
    this.emoji2,
    this.emoji3,
    required this.Likes,
    required this.CommentCount,
  });
  final String ProfileUploadimg;
  final String ProfilUploadname;
  final String ProfileUploadtime;
  final String UploadImgdetail;
  final String description;
  //final String emoji1;
  final String? emoji2;
  final String? emoji3;
  final String Likes;
  final String CommentCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 3,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.35,
        color: Colors.transparent,
        child: Wrap(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 40,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              ProfileUploadimg,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ProfilUploadname,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(ProfileUploadtime),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.more_horiz_rounded,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  description,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.26,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // image: DecorationImage(
                  //     fit: BoxFit.contain,

                  //     image: NetworkImage(
                  //         'https://w0.peakpx.com/wallpaper/16/348/HD-wallpaper-sunny-leone-dark-maroon-pose-same-thumbnail.jpg')),
                ),
                child: Image.network(
                  UploadImgdetail,
                ),
              ),
              Container(
                height: 80,
                // color: Colors.green,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '👍',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                emoji2!,
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                emoji3!,
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(Likes),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 8),
                            child: Row(
                              children: [Text('$CommentCount  Comments')],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: 32,
                            // width: 90,
                            //  color: Colors.amber,
                            child: Center(
                                child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.thumb_up,
                                color: Colors.grey,
                              ),
                            )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 32,
                            // width: 90,
                            // color: Colors.amber,
                            child: Center(
                                child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.messenger,
                                color: Colors.grey,
                              ),
                            )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 32,
                            // width: 90,
                            // color: Colors.amber,
                            child: Center(
                                child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.send,
                                color: Colors.grey,
                              ),
                            )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 5,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
