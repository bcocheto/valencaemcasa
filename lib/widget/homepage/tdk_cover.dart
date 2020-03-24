import 'package:flutter/material.dart';
import 'package:sozluk/util/screen_util.dart';

class TdkCover extends StatelessWidget {
  const TdkCover({
    Key key,
    @required bool isKeyboardVisible,
    @required this.context,
    this.scale,
  })  : _isKeyboardVisible = isKeyboardVisible,
        super(key: key);

  final bool _isKeyboardVisible;
  final BuildContext context;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isKeyboardVisible ? 0.0 : 1,
      duration: Duration(milliseconds: 280),
      child: Container(
        height: !_isKeyboardVisible ? ScreenUtil.getHeight(context) * scale : 0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child:Text(
              "Valença",
              style: TextStyle(fontFamily: "Insanibu", fontSize: 30, color: Colors.white),
            )),
            Wrap(),
            Center(child:Text(
              "Em casa",
              style: TextStyle(fontFamily: "Insanibu", color: Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}
