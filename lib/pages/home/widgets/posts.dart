import 'package:app_facebook/models/post_model.dart';
import 'package:app_facebook/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) => Post(post: posts[index]),
    );
  }
}

class Post extends StatelessWidget {
  Post({required this.post});

  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 255, 255, 1.0),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("${post.path}"),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${post.fullName}",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Color.fromRGBO(25, 41, 92, 1.0),
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.public_rounded,
                        color: Colors.black38,
                        size: 12.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "Hace 3 días",
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Colors.black38,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(248, 249, 250, 1.0),
                radius: 16.0,
                child: Icon(
                  Icons.star,
                  color: Colors.blue,
                  size: 15.0,
                ),
              ),
              SizedBox(width: 10.0),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(248, 249, 250, 1.0),
                radius: 16.0,
                child: Icon(
                  Icons.more_horiz,
                  size: 18.0,
                  color: Colors.black45,
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            "${post.description}",
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: AppTheme.kDarkBlue,
                  fontWeight: FontWeight.w400,
                ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage("${post.pathPost}"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Row(
              children: [
                Text(
                  "${post.comments}",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: AppTheme.kDarkBlue),
                ),
                SizedBox(width: 10.0),
                Text(
                  "${post.shares}",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: AppTheme.kDarkBlue),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16.0,
                  child: Image.asset(
                    "assets/icons/like2.png",
                    width: 16.0,
                    color: Color.fromRGBO(25, 41, 92, 1.0),
                  ),
                ),
                SizedBox(width: 10.0),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16.0,
                  child: Image.asset(
                    "assets/icons/comment.png",
                    width: 16.0,
                    color: Color.fromRGBO(25, 41, 92, 1.0),
                  ),
                ),
                SizedBox(width: 10.0),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16.0,
                  child: Image.asset(
                    "assets/icons/share.png",
                    width: 16.0,
                    color: Color.fromRGBO(25, 41, 92, 1.0),
                  ),
                ),
                Spacer(),
                Text(
                  "Mao Lop y 50 personas más",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Color.fromRGBO(142, 151, 183, 1.0)),
                ),
                SizedBox(width: 5.0),
                CircleAvatar(
                  backgroundColor: Colors.blueAccent[400],
                  minRadius: 10.0,
                  child: Image.asset("assets/icons/like.png", width: 10.0),
                ),
                CircleAvatar(
                  backgroundColor: Colors.redAccent[400],
                  minRadius: 10.0,
                  child: Image.asset("assets/icons/heart.png", width: 10.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
