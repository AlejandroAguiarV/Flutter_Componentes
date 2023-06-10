import 'package:flutter/material.dart';

class LinearScreen extends StatefulWidget {
  const LinearScreen({super.key});
  _LinearScreenState createState() => _LinearScreenState();
}

//codeimg.io
class _LinearScreenState extends State<LinearScreen> {
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
          title: Text('Flutter Linear Progress'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.2,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.4,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.6,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                      backgroundColor: Colors.grey,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                        value: 0.8,
                        backgroundColor: Colors.grey,
                        color: Colors.purple)),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 1.0,
                      backgroundColor: Colors.grey,
                      color: Colors.purple,
                      minHeight: 10,
                    ))
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/linear.jpeg'),
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
