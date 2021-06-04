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
                child: const Text(
                  'Keep Adding Expenditures.',
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
        ));
  }
}
