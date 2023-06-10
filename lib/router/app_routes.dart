import 'package:flutter/material.dart';
import 'package:flutercomponenes/models/models.dart';
import 'package:flutercomponenes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";
  static final menuOption = <MenuOption>[
    MenuOption(
        icon: Icons.remove,
        name: " ListView Tipo 1",
        route: "listview1",
        screens: ListView1screen()),
    MenuOption(
        icon: Icons.remove,
        name: " ListView Tipo 2",
        route: "listview2",
        screens: ListView2screen()),
    MenuOption(
        icon: Icons.remove,
        name: " TAbBar y TabView",
        route: "TabBar y TabView",
        screens: const TabScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Buttonview",
        route: "Buttonview",
        screens: const ButtonScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Tipos de TextField",
        route: "Textfield",
        screens: const TextFieldScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Alert Dialog",
        route: "alertdialog",
        screens: const AlertDialogScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Card",
        route: "cardview",
        screens: const CardScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Grid View",
        route: "gridview",
        screens: const GridScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Flutter Iconos",
        route: "Icon",
        screens: const IconScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Linear Progress",
        route: "linear",
        screens: const LinearScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Slider",
        route: "slider",
        screens: const SliderScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Checkbox",
        route: "checkbox",
        screens: const CheckboxScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " RadioButton",
        route: "radioview",
        screens: const RadioButtonScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Circular Progress",
        route: "circularprogress",
        screens: const CircularProgressScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "Snack Bar",
        route: "snackbar",
        screens: const SnackBarScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "Switch",
        route: "switch",
        screens: const SwitchScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "Menu Horizontal",
        route: "drawer",
        screens: const DrawerScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "Botones de texto",
        route: "textbutton",
        screens: const TextButtonScreen()),
  ];
  //creamos lista map donde obtiene todas las rutas
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //Creamos lista Mp para guardar las utas actuales del proyecto
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext contex) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes
          .addAll({option.route: (BuildContext context) => option.screens});
    }
    return appRoutes;
  }
}
