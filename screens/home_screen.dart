import 'package:fazen_tech/tabs/info_tab.dart';
import 'package:flutter/material.dart';
import 'package:fazen_tech/tabs/home_tab.dart';
import 'package:fazen_tech/tabs/orders_tab.dart';
import 'package:fazen_tech/tabs/places_tab.dart';
import 'package:fazen_tech/tabs/products_tab.dart';
import 'package:fazen_tech/widgets/cart_button.dart';
import 'package:fazen_tech/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Venha Até Nós"),
            centerTitle: true,
          ),
          body: PlacesTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Meus Pedidos"),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Sobre o App"),
            centerTitle: true,
          ),
          body: Info_Tab(),
          drawer: CustomDrawer(_pageController),
        ),
      ],
    );
  }
}
