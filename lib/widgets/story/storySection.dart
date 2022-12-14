import 'package:facebook_homepage_ui/widgets/story/StaoryCard.dart';
import 'package:facebook_homepage_ui/widgets/story/myStoryCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(05),
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyStoryCard(),
            StoryCard(
              Storyimg:
                  'https://images.pexels.com/photos/274422/pexels-photo-274422.jpeg?auto=compress&cs=tinysrgb&w=300',
              Profileimg:
                  'https://images.pexels.com/photos/159515/football-american-football-runner-player-159515.jpeg?auto=compress&cs=tinysrgb&w=300',
              StoryHolder: 'Devid',
            ),
            StoryCard(
              Storyimg:
                  'https://www.filmibeat.com/ph-big/2022/11/sunny-leone_166972171550.jpg',
              Profileimg:
                  'https://www.filmibeat.com/ph-big/2022/11/sunny-leone_166972171540.jpg',
              StoryHolder: 'Sunny Leone',
            ),
            StoryCard(
                Storyimg:
                    "https://media.zigcdn.com/media/content/2022/Nov/6370cc3a1809e_720x540.jpg",
                Profileimg:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Dulquer_Salmaan_at_Zoya_Factor_Trailer_Launch_function_%28cropped%29.jpg/330px-Dulquer_Salmaan_at_Zoya_Factor_Trailer_Launch_function_%28cropped%29.jpg",
                StoryHolder: 'Dulquer Salmaan'),
            StoryCard(
                Storyimg:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Mammootty2022.jpg/375px-Mammootty2022.jpg',
                Profileimg:
                    'https://www.landrover.in/apripub/637667917559530203JK.jpg?v=1#desktop__680x450',
                StoryHolder: 'Mammooty'),
            StoryCard(
                Storyimg:
                    'https://www.thecompleteactor.com/uploads/movies/thumbnails/thumb/monster2-gHxKSn1GJy5TUDf.jpg',
                Profileimg:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Mohanlal_Viswanathan_BNC.jpg/330px-Mohanlal_Viswanathan_BNC.jpg',
                StoryHolder: 'Mohanlal')
          ],
        ),
      ),
    );
  }
}
