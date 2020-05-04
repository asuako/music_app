import 'package:flutter/material.dart';
import 'package:mzic/pages/song.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.music_note),
        title: Text('MIZC'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              width: 120,
              height: 145,
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              margin: EdgeInsets.only(left: 10, right: 0, top: 5, bottom: 2),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 1),
                ],
              ),
            ),
            Container(
              width: 120,
              height: 145,
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              margin: EdgeInsets.only(left: 10, right: 0, top: 5, bottom: 2),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 1),
                ],
              ),
            ),
            Container(
              width: 120,
              height: 145,
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              margin: EdgeInsets.only(left: 10, right: 0, top: 5, bottom: 2),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 1),
                ],
              ),
            ),
            Container(
              width: 120,
              height: 145,
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              margin: EdgeInsets.only(left: 10, right: 0, top: 5, bottom: 2),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 1),
                ],
              ),
            ),
            Container(
              width: 120,
              height: 145,
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              margin: EdgeInsets.only(left: 10, right: 0, top: 5, bottom: 2),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 1),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Songs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
