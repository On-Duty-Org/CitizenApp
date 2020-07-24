import 'package:citizen_app/Screens/viewFIR.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class FIRCard extends StatefulWidget {
  const FIRCard(
      {Key key,
        @required this.id,
        @required this.data,
        @required this.date,
        @required this.crime})
      : super(key: key);

  final String id;
  final DocumentSnapshot data;
  final String date;
  final String crime;
  @override
  _FIRCardState createState() => _FIRCardState();
}

class _FIRCardState extends State<FIRCard> {
  int currentStep = 0;
  bool ActiveState2 =  false;
  StepState state2 = StepState.indexed;

  Future<void> _showStatusDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('FIR'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Stepper(
                  currentStep: currentStep,
                  controlsBuilder: (BuildContext context,
                      {VoidCallback onStepContinue,
                        VoidCallback onStepCancel}) {
                    return Row(
                      children: <Widget>[
                        Container(
                          child: null,
                        ),
                        Container(
                          child: null,
                        ),
                      ],
                    );
                  },
                  steps: [
                    Step(
                      title: Text('FIR Sent'),
                      content: Text('FIR sent successfully'),
                      state: StepState.complete,
                      isActive: true
                    ),
                    Step(
                      title: Text('FIR Received'),
                      content: Text(
                          'FIR received by the nearest police station successfully'),
                      isActive: ActiveState2,
                      state: state2
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => FIR(id: widget.id, data: widget.data)));
      },
      child: Card(
        color: kActiveCardColor,
        child: ListTile(
          leading: Image.asset('assets/img/FIRicon.png'),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ID: ${widget.id}',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                'Crime: ${widget.crime}',
                style: TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          ),
          subtitle: Text(
            'Filed on: ${widget.date}',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          trailing: PopupMenuButton(
            color: Color(0xFF282a3d),
            onSelected: (var value) {
              switch (value) {
                case 1:
                  setState(() {         //TODO. State of the fir. Make changes here
                    currentStep = 0;
                    ActiveState2 = false;
                    state2 = StepState.indexed;
                  });
                  _showStatusDialog(context);
                  break;
              }
            },
            icon: Icon(Icons.arrow_drop_down),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                value: 1,
                child: Text('Status'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}