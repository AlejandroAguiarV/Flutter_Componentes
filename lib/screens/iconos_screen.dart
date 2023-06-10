import 'package:flutercomponenes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class IconScreen extends StatefulWidget {
  const IconScreen({super.key});
  _IconScreen createState() => _IconScreen();
}

class _IconScreen extends State<IconScreen> {
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
          title: Text('Flutter Iconos'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              //Controlador del grid
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //manejo de numero de columnas
                  crossAxisCount: 4,
                  //espaciado entre las columnas
                  crossAxisSpacing: 1,
                  //espaciado entre las filas
                  mainAxisSpacing: 1,
                  //alto de las columnas
                  mainAxisExtent: 100),
              children: [
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.search),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.home),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.menu),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.close),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.settings),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.done),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.favorite),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.add),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.delete),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.star),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.logout),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.cancel),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.bolt),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.key),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.refresh),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(
                    (Icons.css),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/iconos.jpeg'),
                  Text("Codigo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
