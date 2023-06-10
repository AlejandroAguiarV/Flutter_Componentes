import 'package:flutter/material.dart';

class ListView2screen extends StatelessWidget {

  ListView2screen([Key?key]): super(key:key);
  
  var pais = ["Mexico", "USA", "Canada", "Rusia"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView tipo 2'),
        ),
        body: ListView(
          children: [
            //spread
            ...pais
                .map((pais) => ListTile(
                      title: Text(pais),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.pink),
                      onTap: () {
                        var seleccion1 = pais;
                        print(seleccion1);
                      },
                    ))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
