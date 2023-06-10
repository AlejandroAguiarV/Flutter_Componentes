import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<SwitchScreen> {
  bool _value = false;
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
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
                  icon: Icon(Icons.fact_check),
                ),
                Tab(text: "codigo", icon: Icon(Icons.code)),
              ],
            ),
            title: Text('Switch'),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: [
                  Switch(
                    value: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                  Switch(
                    value: _value1,
                    onChanged: (value) {
                      setState(() {
                        _value1 = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Switch(
                    value: _value2,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value;
                      });
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.deepOrange,
                  ),
                  Switch(
                    value: _value3,
                    onChanged: (value) {
                      setState(() {
                        _value3 = value;
                      });
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.deepOrange,
                    inactiveThumbColor: Colors.red,
                  ),
                  Switch(
                    value: _value4,
                    onChanged: (value) {
                      setState(() {
                        _value4 = value;
                      });
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.deepOrange,
                    inactiveTrackColor: Colors.red[100],
                    inactiveThumbColor: Colors.red,
                  ),
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/switch.png'),
                    Text("Codigo"),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
