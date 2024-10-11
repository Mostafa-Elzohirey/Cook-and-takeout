import 'package:flutter/material.dart';
import 'package:instant_final_project/ui/orders_ui/home.dart';
import 'package:instant_final_project/ui/recipes_ui/recipes/recipes.dart';
import '../assets/colors.dart';
import 'animations/scale_route.dart';

bool screenColor = true;

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            stops: [0.5, 0.5],
            colors: [azureBlue, lightRed],
          )),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: const Text("Welcome",
                      style: TextStyle(fontSize: 72, fontFamily: 'YummyFoods')),
                ),
                const Text("What do you want to do?",
                    style: TextStyle(fontSize: 25, fontFamily: 'YummyFoods')),
                const SizedBox(
                  height: 150,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: InkWell(
                            onTap: () {
                              navToRecipes(context);
                            },
                            child: Container(
                              width: 100,
                              height: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0))),
                              child: Center(
                                  child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/Images/organic.jpg',
                                    scale: 0.5,
                                  ),
                                  const Center(
                                    child: Text(
                                      'Cook',
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontFamily: 'YummyFoods'),
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: () {
                              navToOrder(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 20),
                              width: 190,
                              height: 150,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0))),
                              child: Center(
                                  child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/Images/fastFood.jpg',
                                    fit: BoxFit.fitWidth,
                                  ),
                                  const Center(
                                    child: Text(
                                      'Order',
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontFamily: 'YummyFoods'),
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navToRecipes(context) {
    Navigator.push(
        context,
        ScaleRoute(
          page: const Recipes(),
        ));
  }

  void navToOrder(context) {
    Navigator.push(
        context,
        ScaleRoute(
          page: const Orders(),
        ));
  }
}
