import 'package:flutter/material.dart';

class YearListPage extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  _YearListPageState createState() => _YearListPageState();
}

class _YearListPageState extends State<YearListPage> {
  @override
  Widget build(BuildContext context) {
    double listviewHeight =
        (MediaQuery.of(context).size.height - 56.0 - 80.0) * 0.2;

    return ListView(
      children: <Widget>[
        Container(
          height: listviewHeight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber[600],
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text("2019년"),
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("제목"), Text("내용")],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: listviewHeight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber[600],
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text("2019년"),
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("제목"), Text("내용")],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: listviewHeight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber[600],
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text("2019년"),
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("제목"), Text("내용")],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: listviewHeight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber[600],
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text("2019년"),
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("제목"), Text("내용")],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: listviewHeight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber[600],
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text("2019년"),
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("제목"), Text("내용")],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
