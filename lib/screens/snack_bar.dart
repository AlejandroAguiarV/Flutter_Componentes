import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});
  _SnackBarScreenState createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  var _selected = "";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "ejemplo",
                icon: Icon(Icons.list_alt),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('SnackBar'),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Hi! i am snackbar'),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(50),
                      elevation: 30,
                    ));
                  },
                  child: Text("Show Snackbar"),
                ),
                Text(_selected),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Hi! i am snackbar'),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(milliseconds: 10000),
                    ));
                  },
                  child: Text("Show Snackbar"),
                ),
                Text(_selected),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Hi! i am snackbar'),
                      backgroundColor: Colors.green,
                    ));
                  },
                  child: Text("Show Snackbar"),
                ),
                Text(_selected),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Hi! i am snackbar'),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(20),
                    ));
                  },
                  child: Text("Show Snackbar"),
                ),
                Text(_selected),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Hi! i am snackbar'),
                        backgroundColor: Colors.green,
                        shape: StadiumBorder()));
                  },
                  child: Text("Show Snackbar"),
                ),
                Text(_selected),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Hi! i am snackbar'),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                  child: Text("Show Snackbar"),
                ),
                Text(_selected),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Hi! i am snackbar'),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating,
                        width: 200));
                  },
                  child: Text("Show Snackbar"),
                ),
                Text(_selected),
              ],
            )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/snackbar.png"),
                  Text("Codgio"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
