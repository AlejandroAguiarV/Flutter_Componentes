import 'package:flutter/material.dart';
import 'package:flutercomponenes/theme/app_theme.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Ejemplo",
                icon: Icon(Icons.fact_check),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter TabBar y TabView'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Card con background color",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: AppTheme.primary,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("Card con elevacion"),
                      ),
                      elevation: 8,
                    )),
                Card(
                  child: ListTile(
                    title: Text("Codesinsider.com"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                ),
                Card(
                  child: ListTile(
                    title: Text("Codesinsider.com"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                Card(
                  child: ListTile(
                    //leading: Icon(Icons.music_note),
                    title: Text("Codesinsider.com"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                ),
                Card(
                  child: ListTile(
                    //leading: Icon(Icons.music_note),
                    title: Text("Codesinsider.com"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child: ListTile(
                      title: Text("Codesinsider.com"),
                    ),
                    elevation: 8,
                    shadowColor: Colors.green,
                    margin: EdgeInsets.all(20),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Codesinsider.com"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                ),
                Card(
                  child: ListTile(
                    title: Text("Codesinsider.com"),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                ),
                Card(
                  child: Container(
                    height: 160,
                    width: 160,
                    child: Center(
                      child: ListTile(
                        title: Text("Codesinsider.com"),
                      ),
                    ),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(20),
                  shape: CircleBorder(
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                )
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/tabview.jpeg'),
                  Text("Codigo"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
