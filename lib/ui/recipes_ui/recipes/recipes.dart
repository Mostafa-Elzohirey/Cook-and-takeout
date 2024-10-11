import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instant_final_project/ui/recipes_ui/recipe_description.dart';
import 'package:instant_final_project/ui/recipes_ui/recipes/manager/recipes_cubit.dart';
import 'package:instant_final_project/ui/recipes_ui/recipes/manager/recipes_state.dart';
import '../../../assets/colors.dart';
import '../../../core/recipes_core/recipes_response.dart';
import '../../../widgets/recipes_widgets/recipe_card.dart';
import '../../animations/scale_route.dart';
import '../saved/saved_recipes.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  final firestore = FirebaseFirestore.instance;


  int savedIndex = 0;
  final cubit = RecipesCubit();

  @override
  void initState() {
    super.initState();
    cubit.getRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: azureBlue,
            foregroundColor: Colors.white,
            title: const Row(
              children: [
                Icon(
                  Icons.restaurant_menu,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Recipes',
                  style: TextStyle(
                    fontFamily: 'YummyFoods',
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    navToSavedRecipes(context);
                  },
                  icon: const Icon(Icons.bookmark),
                ),
              )
            ],
          ),
          body: BlocBuilder<RecipesCubit,RecipesState>(
            buildWhen: (previous, current) {
              return current is GetRecipes;
            },
            builder: (context, state) {
              return cubit.isLoading
                  ? const Center(
                  child: CircularProgressIndicator(
                    color: azureBlue,
                  ))
                  : ListView.builder(
                  itemCount: cubit.recipes.length,
                  itemBuilder: (context, index) {
                    RecipesInfo recipe = cubit.recipes[index];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onDoubleTap: () {
                                cubit.savedRecipes.add(recipe);
                                cubit.saveRecipes(index);
                              },
                              onTap: () {
                                navToRecipeDescription(context, index);
                              },
                              child: RecipeCard(
                                  title: recipe.title,
                                  cookTime:
                                  "${recipe.readyInMinutes.toString()} Min",
                                  healthScore: recipe.healthScore,
                                  image: recipe.image)),
                        ),
                      ],
                    );
                  });
            },
          )),
    );
  }



  void navToRecipeDescription(context, index) {
    RecipesInfo recipe = cubit.recipes[index];
    Navigator.push(
        context,
        ScaleRoute(
          page: Description(
              ingredients: recipe.extendedIngredients,
              analyzedInstructions: recipe.analyzedInstructions,
              image: recipe.image,
              title: recipe.title),
        ));
  }

  void navToSavedRecipes(context) {
    List savedRecipess = cubit.savedRecipes;
    Navigator.push(
        context,
        ScaleRoute(
          page: SavedRecipes(savedRecipes: savedRecipess),
        ));
  }
}
