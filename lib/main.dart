import 'package:flutter/material.dart';
import 'DB/db_helper.dart';
import 'DB/diary_model.dart';
import 'pages/calender.dart';
import 'pages/year_list.dart';
import 'pages/diary.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    CalendarPage(),
    YearListPage(),
    DiaryPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        // FutureBuilder(
        //   future: DBHelper().getDiary(20210725),
        //   builder: (BuildContext context, AsyncSnapshot<Diary?> snapshot) {
        //     if (snapshot.hasData) {
        //       return Text(snapshot.data.toString());
        //     } else {
        //       return Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }
        //   },
        // ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Years'),
            BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'Diary'),
          ],
          selectedItemColor: Colors.red, //선택된 아이템의 색상
          unselectedItemColor: Colors.black.withOpacity(.60), //선택 안된 아이템의 색상
          currentIndex: _selectedIndex, //현재 선택된 Index
          onTap: (int index) => _onItemTapped(index),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                //추가 버튼
                var diary = Diary(
                    id: 20210725,
                    title: '제목',
                    contents: '내용',
                    day: '일요일',
                    yyyy: 2021,
                    mm: 7,
                    dd: 25,
                    createdAt: '지금',
                    updatedAt: '지금');
                DBHelper().createDiary(diary);
              },
            )
          ],
        ),
      ),
    );
  }
}
