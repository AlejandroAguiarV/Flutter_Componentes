import 'package:flutercomponenes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});
  _GridScreen createState() => _GridScreen();
}

class _GridScreen extends State<GridScreen> {
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
            GridView(
              //Controlador del grid
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //manejo de numero de columnas
                  crossAxisCount: 1,
                  //espaciado entre las columnas
                  crossAxisSpacing: 1,
                  //espaciado entre las filas
                  mainAxisSpacing: 1,
                  //alto de las columnas
                  mainAxisExtent: 100),
              children: [
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/grid.jpeg'),
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
