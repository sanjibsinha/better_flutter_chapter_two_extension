import 'package:flutter/material.dart';

class AddNameList extends StatefulWidget {
  @override
  _AddNameListState createState() => _AddNameListState();
}

class _AddNameListState extends State<AddNameList> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Expenditures'),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(
                  color: Colors.redAccent,
                ),
              ),
              alignment: Alignment.topCenter,
              child: const Text(
                'I am at the top and positioned center.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                border: Border.all(
                  color: Colors.black45,
                  width: 8,
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'I am at the bottom and positioned left.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
