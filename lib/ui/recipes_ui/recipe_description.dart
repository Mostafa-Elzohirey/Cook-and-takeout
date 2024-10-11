import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../core/recipes_core/recipes_response.dart';
import '../../assets/colors.dart';

class Description extends StatefulWidget {
  const Description(
      {super.key,
      required this.ingredients,
      required this.analyzedInstructions,
      required this.image,
      required this.title});
  final List<AnalyzedInstructions> analyzedInstructions;
  final List<ExtendedIngredients> ingredients;
  final String image;
  final String title;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    late List<AnalyzedInstructions> analyzedInstructions =
        widget.analyzedInstructions;
    late List<ExtendedIngredients> ingredients = widget.ingredients;
    late String image = widget.image;
    late String title = widget.title;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: azureBlue,
        foregroundColor: Colors.white,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0),
              height: 275,
              child: image.isEmpty
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        const Icon(
                          Icons.image_not_supported,
                          size: 250,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.6),
                        ),
                        Center(
                            child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'YummyFoods'),
                        ))
                      ],
                    )
                  : Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: image,
                          fit: BoxFit.contain,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.6),
                        ),
                        Center(
                            child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'YummyFoods'),
                        ))
                      ],
                    ),
            ),
            const Divider(height: 5, color: Colors.black, thickness: 1),
            const Center(
              child: Text(
                "Ingredients",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: ingredients.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' - ${ingredients[index].measures!.metric.amount.toString()} ${ingredients[index].measures!.metric.unitLong}(${ingredients[index].measures!.metric.unitShort}) ${ingredients[index].name}',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 19),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            const Divider(height: 10, color: Colors.black, thickness: 1),
            const Center(
              child: Text(
                "Steps",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: analyzedInstructions[0].steps.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '- ${analyzedInstructions[0].steps[index].number} ${analyzedInstructions[0].steps[index].step}-',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 19),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
