class Diary {
  final int id;
  final String title;
  final String contents;
  final int yyyy;
  final int mm;
  final int dd;
  final String day;
  final String createdAt;
  final String updatedAt;

  Diary(
      {required this.id,
      required this.title,
      required this.contents,
      required this.yyyy,
      required this.mm,
      required this.dd,
      required this.day,
      required this.createdAt,
      required this.updatedAt});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'contents': contents,
      'yyyy': yyyy,
      'mm': mm,
      'dd': dd,
      'day': day,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }

  Diary.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        contents = map['contents'],
        yyyy = map['yyyy'],
        mm = map['mm'],
        dd = map['dd'],
        day = map['day'],
        createdAt = map['createdAt'],
        updatedAt = map['updatedAt'];

  @override
  String toString() {
    return 'Diary{ id: $id, title: $title, contents: $contents, yyyy : $yyyy, mm : $mm, dd : $dd, day : $day, createdAt : $createdAt, updatedAt : $updatedAt }';
  }
}
