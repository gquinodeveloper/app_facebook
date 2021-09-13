import 'package:app_facebook/models/history_model.dart';
import 'package:app_facebook/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Histories extends StatelessWidget {
  const Histories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 135.0,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: histories.length,
        itemBuilder: (context, index) => HistoryItem(
          history: histories[index],
        ),
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  HistoryItem({
    required this.history,
  });

  final HistoryModel history;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0),
      width: 90.0,
      child: Column(
        children: [
          Container(
            height: 110.0,
            child: Stack(
              children: [
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: AssetImage("${history.path}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: history.isFirst
                        ? CircleAvatar(
                            backgroundColor: Colors.blue[600],
                            radius: 12.0,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 12.0,
                            ),
                          )
                        : CircleAvatar(
                            radius: 12.0,
                            backgroundImage: AssetImage("${history.avatar}"),
                          ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            history.isFirst ? "Crear historia" : history.name ?? "null",
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: AppTheme.kDarkBlue),
          ),
        ],
      ),
    );
  }
}
