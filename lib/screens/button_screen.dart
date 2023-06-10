import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});
  _ButtonScreenState createState() => _ButtonScreenState();
}

//codeimg.io
class _ButtonScreenState extends State<ButtonScreen> {
  int _value = 1;
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
          title: Text('Flutter Botones'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget> [
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.amber,
                  child: TextButton(
                    child: Text("Boton Texto"),
                    onPressed: (){

                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.amber,
                  child: OutlinedButton(
                    child: Text("Boton fuera de linea"),
                    onPressed: (){
                      
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.amber,
                  child: ElevatedButton(
                    child: Text("Boton Elevado"),
                    onPressed: (){
                      
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.amber,
                  child: FloatingActionButton(
                    child: Text("Boton flotante"),
                    onPressed: (){
                      
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  //color: Colors.amber,
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: (){
                      
                    },
                  ),
                ),
               Container(
                 margin: const EdgeInsets.all(10),
                 child:  DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Primer Item"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Segundo Item"),
                          value: 2,
                        )
                      ],
                      onChanged: (_view) {
                        setState(() {
                          _value = _value;
                        });
                      },
                      hint: Text("Select item")),
               ),
               Container(
                 margin: const EdgeInsets.all(10),
                 child:                   PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("Pimero"),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text("Segundo"),
                              value: 2,
                            )
                          ]),
               ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/button.jpeg'),
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
