import 'package:app_facebook/pages/home/widgets/histories.dart';
import 'package:app_facebook/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'widgets/header.dart';
import 'widgets/posts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 250, 1.0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 55.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Image.asset("assets/icons/fb.png"),
        ),
        actions: [
          _headerIcons(icon: "search.png"),
          _headerIcons(icon: "alert.png"),
          _headerIcons(icon: "messenger.png"),
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/8d/75/f3/8d75f3ef8b863be412c6b6438cb51283.jpg"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Histories(),
            Posts(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/icons/home.png", width: 20.0),
            Image.asset("assets/icons/youtube.png", width: 20.0),
            Image.asset("assets/icons/moun.png", width: 20.0),
            Image.asset("assets/icons/Grupo.png", width: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _headerIcons({required String icon}) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        backgroundColor: AppTheme.kLight,
        child: Padding(
          padding: EdgeInsets.all(11.0),
          child: Image.asset("assets/icons/$icon"),
        ),
      ),
    );
  }
}
