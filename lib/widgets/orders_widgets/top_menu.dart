import 'package:flutter/material.dart';

import '../../core/orders_core/top_menu_model.dart';

class TopMenus extends StatelessWidget {
  TopMenus({super.key});
  final List menuTiles = [
    TopMenuTile(
      name: "Burger",
      imageUrl: 'ic_burger',
    ),
    TopMenuTile(
      name: "Sushi",
      imageUrl: 'ic_sushi',
    ),
    TopMenuTile(
      name: "Pizza",
      imageUrl: 'ic_pizza',
    ),
    TopMenuTile(
      name: "Cake",
      imageUrl: 'ic_cake',
    ),
    TopMenuTile(
      name: "Ice Cream",
      imageUrl: 'ic_ice_cream',
    ),
    TopMenuTile(
      name: "Soft Drink",
      imageUrl: 'ic_soft_drink',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: menuTiles.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return menuTile(index);
          },
        ));
  }

  Widget menuTile(index) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFFae3e2),
                    blurRadius: 25,
                    offset: Offset(0.0, 0.75))
              ],
            ),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              child: SizedBox(
                width: 50,
                height: 50,
                child: Center(
                  child: Image.asset(
                    'assets/restaurants_assets/${menuTiles[index].imageUrl}.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
          ),
          Text(
            menuTiles[index].name,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6e6e71)),
          )
        ],
      ),
    );
  }
}
