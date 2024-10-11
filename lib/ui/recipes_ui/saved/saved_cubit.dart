import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:instant_final_project/ui/recipes_ui/saved/saved_state.dart';



import '../../../assets/colors.dart';
import '../../../core/recipes_core/recipes_response.dart';



class SavedCubit extends Cubit<SavedState> {
  SavedCubit() : super(SavedInitial());
  late List<RecipesInfo> savedRecipes = [];
  final firestore = FirebaseFirestore.instance;

  void getRecipes() {
    firestore.collection("Saved").get().then((value) {
      savedRecipes.clear();
      for (var doc in value.docs) {
        final recipe = RecipesInfo.fromJson(doc.data());
        savedRecipes.add(recipe);
      }
      emit(GetRecipesState());

    });
  }
  void removeRecipe(index) {
    RecipesInfo recipe = savedRecipes[index];
    savedRecipes.removeAt(index);
    firestore.collection('Saved').doc(recipe.title).delete();
    Fluttertoast.showToast(
        msg: "Recipe removed!",
        backgroundColor: azureBlue);
    emit(DeleteRecipesState());
  }

}
