import 'package:flutter/material.dart';

class TextButtonScreen extends StatefulWidget {
  const TextButtonScreen({super.key});
  _TextButtonScreenState createState() => _TextButtonScreenState();
}

class _TextButtonScreenState extends State<TextButtonScreen> {
  int val = 1;
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
          title: Text('Flutter TextButton'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("Button"),
                      onPressed: () {},
                    ),
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.save),
                    label: Text("SAVE"),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 20),
                      child: TextButton(
                        child: Text("button"),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {},
                      )),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("Button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        onSurface: Colors.black,
                      ),
                      onPressed: null,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          side: BorderSide(color: Colors.deepOrange, width: 1)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        side: BorderSide(color: Colors.deepOrange, width: 1),
                        elevation: 20,
                        minimumSize: Size(50, 50),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        side: BorderSide(color: Colors.deepOrange, width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: Colors.red,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        side: BorderSide(color: Colors.deepOrange, width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.green,
                        side: BorderSide(color: Colors.deepOrange, width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: Colors.red,
                        shape: CircleBorder(),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          side: BorderSide(color: Colors.deepOrange, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Colors.red,
                          padding: EdgeInsets.only(
                              left: 60, right: 60, top: 15, bottom: 15)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          side: BorderSide(color: Colors.deepOrange, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Colors.red,
                          padding: EdgeInsets.all(30)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          side: BorderSide(color: Colors.deepOrange, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Colors.red,
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          side: BorderSide(color: Colors.deepOrange, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50),
                          textStyle: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      child: Text("button"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          elevation: MaterialStateProperty.all<double>(20),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(100, 50)),
                          shadowColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          shape: MaterialStateProperty.all<CircleBorder>(
                              CircleBorder()),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(30)),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(
                                  fontSize: 20, fontStyle: FontStyle.italic))),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 20),
                      child: TextButton(
                        child: Text("button"),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.green,
                            elevation: 20,
                            minimumSize: Size(100, 50),
                            shadowColor: Colors.red,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(30),
                            textStyle: TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic)),
                        onPressed: () {},
                      )),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/textbutton.jpeg'),
                  Text("Codigo de TextButton"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
