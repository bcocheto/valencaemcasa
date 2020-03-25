import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  final String title;
  const DrawerPage({Key key, this.title = "Drawer"}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int itemSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            ListTile(
              title: Text(
                'Nome',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Descrição",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                height: 200,
                width: 500,
                child: GridView.count(
                  crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Card(
                      child: Container(
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
