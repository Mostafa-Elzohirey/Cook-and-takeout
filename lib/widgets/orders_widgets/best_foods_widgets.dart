import 'package:flutter/material.dart';
import 'package:instant_final_project/core/orders_core/best_foods_model.dart';
import '../../ui/animations/scale_route.dart';
import '../../ui/orders_ui/foods_details.dart';

class BestFoodsList extends StatelessWidget {
  BestFoodsList({super.key});
  final List bestFoodList = [
    BestFood(
        name: "waffles and berries",
        imageUrl: "ic_best_food_1",
        rating: 4.5,
        numberOfRatings: "900",
        price: 80),
    BestFood(
        name: "Shrimp with rice",
        imageUrl: "ic_best_food_2",
        rating: 4.9,
        numberOfRatings: "1100",
        price: 170),
    BestFood(
        name: "Steak with cashews",
        imageUrl: "ic_best_food_3",
        rating: 4.8,
        numberOfRatings: "1500",
        price: 300),
    BestFood(
        name: "Chocolate souffle",
        imageUrl: "ic_best_food_4",
        rating: 4.6,
        numberOfRatings: "950",
        price: 80),
    BestFood(
        name: "Salmon minis",
        imageUrl: "ic_best_food_5",
        rating: 4.5,
        numberOfRatings: "1000",
        price: 200),
    BestFood(
        name: "Hummus with pita",
        imageUrl: "ic_best_food_6",
        rating: 5.0,
        numberOfRatings: "500",
        price: 100),
    BestFood(
        name: "Deviled eggs",
        imageUrl: "ic_best_food_7",
        rating: 4.1,
        numberOfRatings: "3000",
        price: 120),
    BestFood(
        name: "Chicken fajitas",
        imageUrl: "ic_best_food_8",
        rating: 5.0,
        numberOfRatings: "1200",
        price: 220),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        bestFoods(0, context),
        bestFoods(1, context),
        bestFoods(2, context),
        bestFoods(3, context),
        bestFoods(4, context),
        bestFoods(5, context),
        bestFoods(6, context),
        bestFoods(7, context),
      ],
    );
  }

  Widget bestFoods(int index, context) {
    return InkWell(
      onTap: () {
        navToFoodDetails(context, index);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 5,
              top: 5,
              bottom: 5,
            ),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 1,
              margin: const EdgeInsets.all(5),
              child: Image.asset(
                  'assets/restaurants_assets/${bestFoodList[index].imageUrl}.jpeg'),
            ),
          ),
        ],
      ),
    );
  }

  void navToFoodDetails(context, index) {
    BestFood bestDetails = bestFoodList[index];
    Navigator.push(
      context,
      ScaleRoute(
        page: FoodDetails(
          name: bestDetails.name,
          imageUrl: bestDetails.imageUrl,
          rating: bestDetails.rating,
          numberOfRating: bestDetails.numberOfRatings,
          price: bestDetails.price,
        ),
      ),
    );
  }
}
