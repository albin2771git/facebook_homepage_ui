import 'package:facebook_homepage_ui/widgets/uploads/uploads.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageView extends StatelessWidget {
  // const ImageView({super.key});
  List<String> profileimg = [
    'https://www.filmibeat.com/ph-big/2022/11/sunny-leone_166972171540.jpg',
    'https://www.filmibeat.com/ph-big/2020/01/mammootty_1579675009220.jpg',
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Dulquer_Salmaan_at_Zoya_Factor_Trailer_Launch_function_%28cropped%29.jpg/330px-Dulquer_Salmaan_at_Zoya_Factor_Trailer_Launch_function_%28cropped%29.jpg",
    'https://www.landrover.in/apripub/637667917559530203JK.jpg?v=1#desktop__680x450',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Mohanlal_Viswanathan_BNC.jpg/330px-Mohanlal_Viswanathan_BNC.jpg'
  ];
  List<String> Uploadimg = [
    'https://w0.peakpx.com/wallpaper/16/348/HD-wallpaper-sunny-leone-dark-maroon-pose-same-thumbnail.jpg',
    'https://www.filmibeat.com/ph-big/2020/01/mammootty_1579675009220.jpg',
  ];
  List<String> Uploadname = ['Sunny Leone', 'Mamooty'];
  List<String> UploadDate = ['2h', '3h'];
  // List<String> UploadImgdetail = [
  //   'https://www.filmibeat.com/ph-big/2022/11/sunny-leone_166972171540.jpg'
  // ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ImageUploads(
            ProfileUploadimg: profileimg[0],
            ProfilUploadname: Uploadname[0],
            ProfileUploadtime: UploadDate[0],
            UploadImgdetail: Uploadimg[0],
            description: 'Summer Days',
            Likes: '12k',
            emoji2: '😍',
            emoji3: '😘',
            CommentCount: '3k',
          ),
          SizedBox(
            height: 90,
          ),
          ImageUploads(
            ProfileUploadimg: profileimg[1],
            ProfilUploadname: Uploadname[1],
            ProfileUploadtime: UploadDate[1],
            UploadImgdetail: Uploadimg[1],
            description: 'Roshak Days',
            Likes: '122k',
            emoji2: '😍',
            emoji3: '😘',
            CommentCount: '21k',
          ),

          // ImageUploads(
          //     ProfileUploadimg: profileimg[1],
          //     ProfilUploadname: Uploadname[1],
          //     ProfileUploadtime: UploadDate[1],
          //     UploadImgdetail: Uploadimg[1],
          //     description: 'Roshac Promotion',
          //     Likes: '121k',
          //     emoji2: '👌',
          //     emoji3: '😘',
          //     CommentCount: '2k')
        ],
      ),
    );
  }
}
