import 'package:flutter/material.dart';
import 'package:instant_final_project/widgets/orders_widgets/best_foods_widgets.dart';
import 'package:instant_final_project/widgets/orders_widgets/popular_foods_widget.dart';
import '../../assets/colors.dart';
import '../../widgets/orders_widgets/top_menu.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightRed,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.delivery_dining_sharp),
            SizedBox(
              width: 10,
            ),
            Text(
              "Restaurants",
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_none))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 5,
                right: 10,
                bottom: 5,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        width: 0,
                        color: Colors.redAccent,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.redAccent,
                    ),
                    suffixIcon: const Icon(
                      Icons.sort,
                      color: Colors.redAccent,
                    ),
                    hintText: "What would you like to order?"),
              ),
            ),
            TopMenus(),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular foods",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            PopularFoods(),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Foods",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0XFF3a3a3b)),
                  )
                ],
              ),
            ),
            BestFoodsList(),
          ],
        ),
      ),
    );
  }
}
