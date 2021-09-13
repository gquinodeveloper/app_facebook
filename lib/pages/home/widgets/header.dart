import 'package:app_facebook/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 200.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Divider(),
          SizedBox(height: 10.0),
          Row(
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/474x/8d/75/f3/8d75f3ef8b863be412c6b6438cb51283.jpg"),
              ),
              SizedBox(width: 15.0),
              Text(
                "¿Qué estas pensando, Mao?",
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Color.fromRGBO(142, 151, 183, 1.0),
                    fontWeight: FontWeight.w400),
              ),
              Spacer(),
              Image.asset("assets/icons/smile.png", width: 20.0),
            ],
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottonIcon(
                context: context,
                title: "Fotos",
                icon: "camera",
              ),
              _bottonIcon(
                context: context,
                title: "En vivo",
                icon: "live",
              ),
              _bottonIcon(
                context: context,
                title: "Video corto",
                icon: "view",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bottonIcon({
    required BuildContext context,
    required String title,
    required String icon,
  }) {
    return Container(
      width: 110.0,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(248, 249, 250, 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/$icon.png", width: 15.0),
          SizedBox(width: 8.0),
          Text(
            title,
            style: Theme.of(context).textTheme.caption!.copyWith(
                color: AppTheme.kDarkBlue, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
