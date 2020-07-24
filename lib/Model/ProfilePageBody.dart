import 'package:flutter/material.dart';
import 'ProfilePageItem.dart';
import 'ProfilePageItemRow.dart';

class ProfilePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
          color: Color(0xFF111328),
          child: new Stack(
            children: <Widget>[
              new CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: <Widget>[
                  new SliverAppBar(
                      pinned: true,
                      expandedHeight: 66.0,
                      flexibleSpace: GradientAppBar("Profile")),
                  new SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    sliver: new SliverFixedExtentList(
                      itemExtent: 152.0,
                      delegate: new SliverChildBuilderDelegate(
                        (context, index) =>
                            new ProfilePageItemRow(items[index]),
                        childCount: items.length,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: new Center(
        child: new Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36.0),
        ),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [const Color(0xFF3366FF), const Color(0xFF00CCFF)],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
