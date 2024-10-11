
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:instant_final_project/ui/recipes_ui/recipes/manager/recipes_state.dart';

import '../../../../core/recipes_core/recipes_response.dart';

class RecipesCubit extends Cubit<RecipesState> {

  RecipesCubit() : super(RecipesInitial());
  bool isLoading = true;
  List<dynamic> recipes = [];
  List<dynamic> savedRecipes = [];
  final firestore = FirebaseFirestore.instance;

  void saveRecipes(index) async {
    final saved = recipes[index];
    await firestore.collection("Saved").doc(saved.title).set(saved.toJson());
    Fluttertoast.showToast(msg: "Recipe saved!");
    emit(RecipeSavedState());
  }

  Future<void> getRecipes() async {
    final response = await Dio().get(
      'https://api.spoonacular.com/recipes/random',
      queryParameters: {
        "apiKey": "3898c50f1ad0413dbe2791faf8e040b4",
        "number": "50"
      },
    );
    isLoading = false;
    final recipeItem = RecipesResponse.fromJson(response.data);

    recipes = recipeItem.recipes;

    emit(GetRecipes());

  }
}
