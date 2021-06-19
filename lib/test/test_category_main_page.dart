import 'dart:html';

import 'package:better_flutter_chapter_two_extension/test/dummy.dart';
import 'package:flutter/material.dart';

class TestCategoryMainPage extends StatelessWidget {
  const TestCategoryMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/test': (context) => DetailPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY.map(
        (e) {
          return CategoryItems(
            id: e.id,
            title: e.title,
            color: e.color,
          );
        },
      ).toList(),
    );
  }
}

class CategoryItems extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItems({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          width: 10,
          color: Colors.black45,
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
