import 'package:flutter/material.dart';
import 'DB/db_helper.dart';
import 'DB/diary_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: FutureBuilder(
          future: DBHelper().getDiary(20210725),
          builder: (BuildContext context, AsyncSnapshot<Diary?> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
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
