import 'package:flutter/material.dart';
import 'package:flutercomponenes/theme/app_theme.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  String val = "";
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
          title: Text('Flutter TextFiedl'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Hint, Label and Helper Text",
                            hintStyle: TextStyle(fontSize: 20),
                            helperText: "Enter username/email "),
                      )),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Rectangular border",
                          helperText: "Enter username/email ",
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Adding Icons & Text",
                            labelText: "Login",
                            icon: Icon(Icons.email)),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: " Styling Cursor",
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: " ObscuringText in TextField",
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: " TextStyle and Alignment",
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        maxLength: 5,
                        decoration: InputDecoration(
                          hintText: " Maximum Length And Number of Lines",
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText:
                              " Keyboard Properties For a TextField Widget",
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        onChanged: (value) {
                          val = value;
                        },
                        decoration: InputDecoration(
                          hintText: "Getting Information From a TextField",
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        toolbarOptions: ToolbarOptions(
                            cut: false,
                            copy: true,
                            paste: true,
                            selectAll: true),
                        decoration: InputDecoration(
                          hintText: " ToolbarOptions in TextField",
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        onTap: () {
                          print("pressed the textfield");
                        },
                        decoration: InputDecoration(
                          hintText: " TextField OnTap()",
                        ),
                      )),
                ]),
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
