import 'package:better_flutter_chapter_two_extension/test/books.dart';
import 'package:flutter/material.dart';

List<Map<String, Object>> bookList = [
  {
    'Category': 'PHP',
    'Books': [
      Books(
        id: 'p1',
        title: 'PHP One',
        detail: 'PHP One detail',
        color: Colors.blue,
      ),
      Books(
          id: 'p2',
          title: 'PHP Two',
          detail: 'PHP Two detail',
          color: Colors.yellow),
      Books(
        id: 'p3',
        title: 'PHP Three',
        detail: 'PHP Thre detail',
        color: Colors.green,
      ),
    ],
  },
];
