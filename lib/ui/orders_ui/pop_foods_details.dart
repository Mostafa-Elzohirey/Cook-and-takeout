import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:instant_final_project/assets/colors.dart';
import 'package:instant_final_project/ui/orders_ui/order_food.dart';

import '../../core/orders_core/popular_foods_model.dart';
import '../animations/scale_route.dart';

class PopFoodDetails extends StatefulWidget {


  const PopFoodDetails({super.key, required this.name, required this.imageUrl, required this.rating, required this.price});

  final String name;
  final String imageUrl;
  final double rating;
  final String price;


  @override
  State<PopFoodDetails> createState() => _PopFoodDetailsState();
}

class _PopFoodDetailsState extends State<PopFoodDetails> {

  late String name = widget.name;
  late String imageUrl = widget.imageUrl;
  late double rating = widget.rating;
  late String price = widget.price;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: lightRed,
          foregroundColor: Colors.white,
          // leading: IconButton(onPressed: (()=>Navigator.of(context).pop()), icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: () {
                  navToOrderFood(context);
                }, icon: const Icon(Icons.business_center))
          ],
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 1,
                margin: const EdgeInsets.all(5),
                child: Image.asset(
                    "assets/restaurants_assets/$imageUrl.png"),
              ),
              const SizedBox(
                height: 30,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$$price",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.redAccent),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Free Delivery",
                  style: TextStyle(
                      color: Color(0xFFa4a1a1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: rating,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 22,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: TabBar(
                  indicatorColor: Colors.redAccent,
                  labelColor: Colors.redAccent,
                  unselectedLabelColor: Color(0xFFa4a1a1),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  tabs: [
                    Tab(
                      text: "Food Details",
                    ),
                    Tab(
                      text: "Food Reviews",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white24,
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "Waffles with mixed berries,kiwis, and oatmeal",
                        style: TextStyle(
                            fontSize: 16, color: Colors.black87, height: 1.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      color: Colors.white24,
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                          "Waffles with mixed berries,kiwis, and oatmeal"),
                    )
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.timelapse,
                        color: azureBlue,
                        size: 35,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "12PM-2PM",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFa9a9a9)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.directions,
                        color: Color(0xFF23c58a),
                        size: 35,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "3 KM",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFa9a9a9)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.map,
                        color: Color(0xFFff0654),
                        size: 35,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "MapView",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFa9a9a9)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.directions_bike,
                        color: Color(0xFFe95959),
                        size: 35,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Delivery",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFa9a9a9)),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navToOrderFood(context) {
    Navigator.push(context, ScaleRoute(page: const OrderFoodPage()));
  }
}
