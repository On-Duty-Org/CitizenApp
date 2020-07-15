import 'package:citizen_app/constants.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  static String id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Citizen App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Keypoints',
                  style: kHeadingText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '1. FIR',
                          style: kWidgetNormalText,
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          '2. Missing',
                          style: kWidgetNormalText,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '3. Instant Help',
                          style: kWidgetNormalText,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '4. My Profile',
                          style: kWidgetNormalText,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Working Structure:',
                    style: kHeadingText,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '1. Screens: Contains all the screens.',
                    style: kWidgetNormalText,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '2. constants: contain the constants(esp. TextStyle) to be used globally.',
                    style: kWidgetNormalText,
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              child: Text('GO'),
            )
          ],
        ));
  }
}
