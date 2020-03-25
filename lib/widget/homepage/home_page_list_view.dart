import 'package:flutter/material.dart';
import 'package:sozluk/util/app_constant.dart';
import 'package:sozluk/widget/idiom_card.dart';

class HomePageListView extends StatelessWidget {
  const HomePageListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Farmácia dos Farmaceuticos',
                style: TextStyle(color: AppConstant.colorProverbsIdiomsText),
              ),
            ],
          ),
          SizedBox(height: 8),
          IdiomCard(
              aberto: true,
              image: 'assets/bg.jpg',
              title: '99999-9999',
              content: '2453-5353'),
          SizedBox(height: 24),
          Row(
            children: <Widget>[
              Text(
                'Lanchonete dos Lanches',
                style: TextStyle(color: AppConstant.colorProverbsIdiomsText),
              ),
            ],
          ),
          SizedBox(height: 8),
          IdiomCard(
              aberto: false,
              image: 'assets/bg.jpg',
              title: '999883-9999',
              content: '2452-5354'),
          SizedBox(height: 24),
          Row(
            children: <Widget>[
              Text(
                'Bir Kelime',
                style: TextStyle(color: AppConstant.colorProverbsIdiomsText),
              ),
            ],
          ),
          SizedBox(height: 8),
          IdiomCard(
              aberto: false,
              image: 'assets/bg.jpg',
              title: '999883-9999',
              content: '2452-5354'),
          SizedBox(height: 24),
          Row(
            children: <Widget>[
              Text(
                'Bir Kelime',
                style: TextStyle(color: AppConstant.colorProverbsIdiomsText),
              ),
            ],
          ),
          SizedBox(height: 8),
          IdiomCard(
              aberto: false,
              image: 'assets/bg.jpg',
              title: '999883-9999',
              content: '2452-5354'),
          SizedBox(height: 24),
          Row(
            children: <Widget>[
              Text(
                'Bir Kelime',
                style: TextStyle(color: AppConstant.colorProverbsIdiomsText),
              ),
            ],
          ),
          SizedBox(height: 8),
          IdiomCard(
              aberto: false,
              image: 'assets/bg.jpg',
              title: '999883-9999',
              content: '2452-5354'),
        ],
      ),
    );
  }
}
