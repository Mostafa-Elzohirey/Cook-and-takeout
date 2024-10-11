import 'package:flutter/material.dart';
import 'package:instant_final_project/assets/colors.dart';

import '../../core/orders_core/popular_foods_model.dart';
import '../../ui/animations/scale_route.dart';
import '../../ui/orders_ui/pop_foods_details.dart';

class PopularFoods extends StatelessWidget {
  PopularFoods({super.key});

  final List popular = [
    PopularFood(
        name: "Sunny-Side up\nWith roast beef",
        imageUrl: "ic_popular_food_1",
        rating: 4.9,
        price: "70"),
    PopularFood(
        name: "Steak with salad",
        imageUrl: "ic_popular_food_2",
        rating: 4.9,
        price: "190"),
    PopularFood(
        name: "Chicken salad",
        imageUrl: "ic_popular_food_3",
        rating: 4.9,
        price: "110"),
    PopularFood(
        name: "Grilled salmon with\ngreens",
        imageUrl: "ic_popular_food_4",
        rating: 4.9,
        price: "150"),
    PopularFood(
        name: "Salmon with\nasparagus",
        imageUrl: "ic_popular_food_5",
        rating: 4.9,
        price: "160"),
    PopularFood(
        name: "Steak with\nroasted potatoes",
        imageUrl: "ic_popular_food_6",
        rating: 4.9,
        price: "200"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        itemCount: popular.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return popularFoods(context, index);
        },
      ),
    );
  }

  Widget popularFoods(context, index) {
    return InkWell(
      onTap: () {
        navToFoodDetails(
          context,
          index,
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 230,
            padding: const EdgeInsets.only(
              left: 10,
              top: 5,
              right: 5,
              bottom: 5,
            ),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: SizedBox(
                width: 170,
                height: 240,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.only(
                              top: 5,
                              right: 5,
                            ),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white70,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFFfae3e2),
                                        blurRadius: 25,
                                        offset: Offset(0.0, 0.75))
                                  ]),
                              child: const Icon(
                                Icons.favorite,
                                color: lightRed,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Center(
                            child: Image.asset(
                              "assets/restaurants_assets/${popular[index].imageUrl}.png",
                              height: 140,
                              width: 130,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Text(
                            popular[index].name,
                            style: const TextStyle(
                                color: Color(0xFF6e6e71),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(
                            right: 5,
                          ),
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFfae3e2),
                                      blurRadius: 25,
                                      offset: Offset(0.0, 0.75))
                                ]),
                            child: const Icon(
                              Icons.near_me,
                              color: lightRed,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
                      child: Text(
                        '\$${popular[index].price}',
                        style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void navToFoodDetails(context, index) {
   PopularFood popDetails=popular[index];
    Navigator.push(context, ScaleRoute(page: PopFoodDetails(name:popDetails.name, imageUrl: popDetails.imageUrl, rating: popDetails.rating,price: popDetails.price)));
  }
}
