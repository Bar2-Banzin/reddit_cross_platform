import 'package:flutter/material.dart';
import 'package:post/createpost/model/post_model.dart';
//import 'package:flutter_code_style/analysis_options.yaml';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../widgets/mod_subreddit_post_sort_bottom.dart';
import '../../post/widgets/post.dart';
import '../../post/test_data.dart';

class ModeratedSubriddetPosts extends StatefulWidget {
  final String routeNamePop;
  ModeratedSubriddetPosts({
    Key? key,
    required this.routeNamePop,
  }) : super(key: key);
  final List posts = TestData.testData;
  // [
  //   {'username': 'ahmed', 'title': 'hello world1'},
  //   {'username': 'sayed', 'title': 'hello world2'},
  //   {'username': 'sayed', 'title': 'hello world3'},
  //   {'username': 'ahmed', 'title': 'hello world1'},
  //   {'username': 'sayed', 'title': 'hello world2'},
  //   {'username': 'sayed', 'title': 'hello world3'},
  //   {'username': 'ahmed', 'title': 'hello world1'},
  //   {'username': 'sayed', 'title': 'hello world2'},
  //   {'username': 'sayed', 'title': 'hello world3'}
  // ];
  @override
  State<ModeratedSubriddetPosts> createState() => _ModeratedSubriddetPosts();
}

class _ModeratedSubriddetPosts extends State<ModeratedSubriddetPosts> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ModSubredditPostSortBottom(
          widget.routeNamePop,
          //_dropDownValue, _icon
        ),
        //Select the type of Posts
        SingleChildScrollView(
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: ((context, index) => Post.community(
                  data: widget.posts[index],
                )),
            itemCount: widget.posts.length,
          ),
        ),
      ],
    );
  }
}
