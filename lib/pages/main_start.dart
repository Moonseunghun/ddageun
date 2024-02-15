import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Map<String , String>> datas = [];

  @override
  void inistate() {
    super.initState();
    datas = [
      {
        'images':'assets/image/1.jpg',
        'title' :'네메시스 축구화',
        'location' : '제주 제주시 아라읍',
        'price': '20,000원',
        'likes' : '2',
      },
      {
        'images':'assets/image/2.jpg',
        'title' :'뭘까',
        'location' : '제주 제주시 아라읍',
        'price': '20,000원',
        'likes' : '2',
      },
      {
        'images':'assets/image/2.jpg',
        'title' :'뭘까',
        'location' : '제주 제주시 아라읍',
        'price': '20,000원',
        'likes' : '2',
      },
      {
        'images':'assets/image/2.jpg',
        'title' :'뭘까',
        'location' : '제주 제주시 아라읍',
        'price': '20,000원',
        'likes' : '2',
      },
      {
        'images':'assets/image/2.jpg',
        'title' :'뭘까',
        'location' : '제주 제주시 아라읍',
        'price': '20,000원',
        'likes' : '2',
      },
      {
        'images':'assets/image/2.jpg',
        'title' :'뭘까',
        'location' : '제주 제주시 아라읍',
        'price': '20,000원',
        'likes' : '2',
      }
    ];
  }

  PreferredSizeWidget _appbarWidget() {
    return AppBar(
      title: GestureDetector(
          onTap: () {
            print('sad');
          },
          onLongPress: () {
            print('asd');
          },
          child: Row(children: [
            Text(
              '아라동',
              style: TextStyle(color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down),
          ])),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.tune),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/svg/bell.svg', width: 22,),
        )
      ],
    );
  }

  Widget _bodyWidget() {
    return ListView.separated(
        itemBuilder: (BuildContext _context, int index){
          return Container(
            child: Text(index.toString()),
          );
        },
        separatorBuilder: (BuildContext _context, int index){
          return Container( height: 1, color: Colors.black,
          );
        },
        itemCount: itemCount)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbarWidget(),
      body: _bodyWidget(),
      bottomNavigationBar: Container(),
    );
  }
}
