import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdiomCard extends StatelessWidget {
  final String title;
  final String content;

  final image;

  final bool aberto;

  const IdiomCard(
      {Key key,
      @required this.title,
      @required this.content,
      @required this.image,
      @required this.aberto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 12.0,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 170,
                        width: 125,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.white.withOpacity(0.3),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            aberto ? "Aberto" : "Fechado",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: aberto ? Colors.green : Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    showCustomDialog(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 135,
                    width: 160,
                    child: GestureDetector(
                      child: Column(
                        children: <Widget>[
                          Spacer(),
                          Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Text(
                            content,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showCustomDialog(BuildContext context) {
    Dialog dialogWithImage = Dialog(
      child: Container(
        height: 300.0,
        width: 300.0,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 300,
              child: Image.asset(
                'assets/bg.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Okay',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Cancel!',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => dialogWithImage);
  }
}
