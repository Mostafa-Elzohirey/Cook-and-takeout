import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instant_final_project/ui/animations/scale_route.dart';
import 'package:instant_final_project/ui/recipes_ui/recipe_description.dart';
import 'package:instant_final_project/ui/recipes_ui/saved/saved_cubit.dart';
import 'package:instant_final_project/ui/recipes_ui/saved/saved_state.dart';
import '../../../core/recipes_core/recipes_response.dart';
import '../../../widgets/recipes_widgets/recipe_card.dart';

class SavedRecipes extends StatefulWidget {
  const SavedRecipes({super.key, required this.savedRecipes});

  final List<dynamic> savedRecipes;

  @override
  State<SavedRecipes> createState() => _SavedRecipesState();
}

class _SavedRecipesState extends State<SavedRecipes> {
  final cubit = SavedCubit();

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
            foregroundColor: Colors.white,
            title: const Row(
              children: [
                Icon(
                  Icons.bookmark,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Saved Recipes',
                  style: TextStyle(
                    fontFamily: 'YummyFoods',
                  ),
                ),
              ],
            ),
          ),
          body: BlocBuilder<SavedCubit, SavedState>(
            buildWhen: (previous, current) {
              return current is GetRecipesState ||
                  current is DeleteRecipesState;
            },
            builder: (context, state) {
              return ListView.builder(
                  itemCount: cubit.savedRecipes.length,
                  itemBuilder: (context, index) {
                    RecipesInfo recipe = cubit.savedRecipes[index];

                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onDoubleTap: () {
                                cubit.removeRecipe(index);
                              },
                              onTap: () {
                                navToRecipeDescription(context, index);
                              },
                              child: RecipeCard(
                                  title: recipe.title,
                                  cookTime:
                                      "${recipe.readyInMinutes.toString()}Min",
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
    RecipesInfo recipe = cubit.savedRecipes[index];
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
}
