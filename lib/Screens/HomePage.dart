import 'package:facebook_homepage_ui/widgets/AppBarwidget.dart';
import 'package:facebook_homepage_ui/widgets/story/storySection.dart';
import 'package:facebook_homepage_ui/widgets/uploads/ImageView.dart';
import 'package:facebook_homepage_ui/widgets/uploads/uploads.dart';
import 'package:facebook_homepage_ui/widgets/writeContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: (Colors.white),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            AppBarwidget(),
            //TabBarWidget(),
            SliverList(
                delegate: SliverChildListDelegate([
              Divider(),
              WriteContainer(),
              Divider(
                thickness: 5,
              ),
              StorySection(),
              Divider(
                thickness: 5,
              ),
              ImageView(),
            ]))
          ],
        ),
      ),
    );
  }
}
