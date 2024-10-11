class RecipesResponse {
  RecipesResponse({
    List<RecipesInfo>? recipes,
  }) {
    _recipes = recipes;
  }

  RecipesResponse.fromJson(dynamic json) {
    if (json['recipes'] != null) {
      _recipes = [];
      json['recipes'].forEach((v) {
        _recipes?.add(RecipesInfo.fromJson(v));
      });
    }
  }
  List<RecipesInfo>? _recipes;

  List<RecipesInfo> get recipes => _recipes ?? [];

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_recipes != null) {
      map['recipes'] = _recipes?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// vegetarian : false
/// vegan : false
/// glutenFree : false
/// dairyFree : false
/// veryHealthy : false
/// cheap : false
/// veryPopular : false
/// sustainable : false
/// lowFodmap : false
/// weightWatcherSmartPoints : 28
/// gaps : "no"
/// preparationMinutes : -1
/// cookingMinutes : -1
/// aggregateLikes : 3
/// healthScore : 27
/// creditsText : "foodista.com"
/// sourceName : "foodista.com"
/// pricePerServing : 260.07
/// extendedIngredients : [{"id":11520421,"aisle":"Pasta and Rice","image":"ziti.jpg","consistency":"SOLID","name":"ziti","nameClean":"cooked ziti","original":"1 pound ziti, cooked","originalName":"ziti, cooked","amount":1.0,"unit":"pound","meta":["cooked"],"measures":{"us":{"amount":1.0,"unitShort":"lb","unitLong":"pound"},"metric":{"amount":453.592,"unitShort":"g","unitLong":"grams"}}},{"id":1123,"aisle":"Milk, Eggs, Other Dairy","image":"egg.png","consistency":"SOLID","name":"egg","nameClean":"egg","original":"1 egg, slightly beaten","originalName":"egg, slightly beaten","amount":1.0,"unit":"","meta":["slightly beaten"],"measures":{"us":{"amount":1.0,"unitShort":"","unitLong":""},"metric":{"amount":1.0,"unitShort":"","unitLong":""}}},{"id":1032,"aisle":"Cheese","image":"parmesan.jpg","consistency":"SOLID","name":"parmesan cheese","nameClean":"grated parmesan cheese","original":"1/4 cup grated parmesan cheese","originalName":"grated parmesan cheese","amount":0.25,"unit":"cup","meta":["grated"],"measures":{"us":{"amount":0.25,"unitShort":"cups","unitLong":"cups"},"metric":{"amount":25.0,"unitShort":"g","unitLong":"grams"}}},{"id":1036,"aisle":"Cheese","image":"ricotta.png","consistency":"SOLID","name":"ricotta","nameClean":"ricotta cheese","original":"1 (15 oz.) container ricotta","originalName":"ricotta","amount":15.0,"unit":"oz","meta":[],"measures":{"us":{"amount":15.0,"unitShort":"oz","unitLong":"ounces"},"metric":{"amount":425.243,"unitShort":"g","unitLong":"grams"}}},{"id":1001026,"aisle":"Cheese","image":"shredded-cheese-white.jpg","consistency":"SOLID","name":"mozzarella","nameClean":"shredded mozzarella","original":"8 ounces shredded mozzarella","originalName":"shredded mozzarella","amount":8.0,"unit":"ounces","meta":["shredded"],"measures":{"us":{"amount":8.0,"unitShort":"oz","unitLong":"ounces"},"metric":{"amount":226.796,"unitShort":"g","unitLong":"grams"}}},{"id":10011549,"aisle":"Pasta and Rice","image":"tomato-sauce-or-pasta-sauce.jpg","consistency":"SOLID","name":"spaghetti sauce","nameClean":"pasta sauce","original":"3 1/2 cups spaghetti sauce","originalName":"spaghetti sauce","amount":3.5,"unit":"cups","meta":[],"measures":{"us":{"amount":3.5,"unitShort":"cups","unitLong":"cups"},"metric":{"amount":857.5,"unitShort":"ml","unitLong":"milliliters"}}}]
/// id : 633884
/// title : "Baked Ziti Or Rigatoni"
/// readyInMinutes : 45
/// servings : 4
/// sourceUrl : "http://www.foodista.com/recipe/LJ86FGZ5/baked-ziti-or-rigatoni"
/// image : "https://spoonacular.com/recipeImages/633884-556x370.jpg"
/// imageType : "jpg"
/// summary : "Baked Ziti Or Rigatoni is a Mediterranean recipe that serves 4. This main course has <b>869 calories</b>, <b>45g of protein</b>, and <b>32g of fat</b> per serving. For <b>$2.6 per serving</b>, this recipe <b>covers 33%</b> of your daily requirements of vitamins and minerals. This recipe from Foodista requires ziti, spaghetti sauce, parmesan cheese, and ricotta. Not a lot of people made this recipe, and 3 would say it hit the spot. From preparation to the plate, this recipe takes around <b>45 minutes</b>. With a spoonacular <b>score of 75%</b>, this dish is good. Try <a href=\"https://spoonacular.com/recipes/rigatoni-al-forno-baked-rigatoni-with-roasted-asparagus-and-on-115058\">Rigatoni Al Forno (Baked Rigatoni) with Roasted Asparagus and On</a>, <a href=\"https://spoonacular.com/recipes/baked-rigatoni-408338\">Baked Rigatoni</a>, and <a href=\"https://spoonacular.com/recipes/baked-rigatoni-138827\">Baked Rigatoni</a> for similar recipes."
/// cuisines : ["Mediterranean","Italian","European"]
/// dishTypes : ["side dish","lunch","main course","main dish","dinner"]
/// diets : []
/// occasions : []
/// instructions : "<ol><li>Mix first 4 ingredients and 1 1/2 cups of spaghetti sauce in a bowl. In a 2 1/2 quart baking dish spread 1/2 cup spaghetti sauce. Add ziti mixture and top with remaining 1 1/2 cups of spaghetti sauce. Sprinkle with 1/2 cup of Parmesan cheese. Bake at 375 degrees for 30 minutes or until top slightly browned.</li></ol>"
/// analyzedInstructions : [{"name":"","steps":[{"number":1,"step":"Mix first 4 ingredients and 1 1/2 cups of spaghetti sauce in a bowl. In a 2 1/2 quart baking dish spread 1/2 cup spaghetti sauce.","ingredients":[{"id":10011549,"name":"pasta sauce","localizedName":"pasta sauce","image":"tomato-sauce-or-pasta-sauce.jpg"},{"id":0,"name":"spread","localizedName":"spread","image":""}],"equipment":[{"id":404646,"name":"baking pan","localizedName":"baking pan","image":"roasting-pan.jpg"},{"id":404783,"name":"bowl","localizedName":"bowl","image":"bowl.jpg"}]},{"number":2,"step":"Add ziti mixture and top with remaining 1 1/2 cups of spaghetti sauce.","ingredients":[{"id":10011549,"name":"pasta sauce","localizedName":"pasta sauce","image":"tomato-sauce-or-pasta-sauce.jpg"},{"id":11520420,"name":"ziti","localizedName":"ziti","image":"ziti.jpg"}],"equipment":[]},{"number":3,"step":"Sprinkle with 1/2 cup of Parmesan cheese.","ingredients":[{"id":1033,"name":"parmesan","localizedName":"parmesan","image":"parmesan.jpg"}],"equipment":[]},{"number":4,"step":"Bake at 375 degrees for 30 minutes or until top slightly browned.","ingredients":[],"equipment":[{"id":404784,"name":"oven","localizedName":"oven","image":"oven.jpg"}],"length":{"number":30,"unit":"minutes"}}]}]
/// originalId : null
/// spoonacularScore : 62.57382583618164
/// spoonacularSourceUrl : "https://spoonacular.com/baked-ziti-or-rigatoni-633884"

class RecipesInfo {
  RecipesInfo({
    bool? vegetarian,
    bool? vegan,
    bool? glutenFree,
    bool? dairyFree,
    bool? veryHealthy,
    bool? cheap,
    bool? veryPopular,
    bool? sustainable,
    bool? lowFodmap,
    num? weightWatcherSmartPoints,
    String? gaps,
    num? preparationMinutes,
    num? cookingMinutes,
    num? aggregateLikes,
    num? healthScore,
    String? creditsText,
    String? sourceName,
    num? pricePerServing,
    List<ExtendedIngredients>? extendedIngredients,
    num? id,
    String? title,
    num? readyInMinutes,
    num? servings,
    String? sourceUrl,
    String? image,
    String? imageType,
    String? summary,
    List<String>? cuisines,
    List<String>? dishTypes,
    List<dynamic>? diets,
    List<dynamic>? occasions,
    String? instructions,
    List<AnalyzedInstructions>? analyzedInstructions,
    dynamic originalId,
    num? spoonacularScore,
    String? spoonacularSourceUrl,
  }) {
    _vegetarian = vegetarian;
    _vegan = vegan;
    _glutenFree = glutenFree;
    _dairyFree = dairyFree;
    _veryHealthy = veryHealthy;
    _cheap = cheap;
    _veryPopular = veryPopular;
    _sustainable = sustainable;
    _lowFodmap = lowFodmap;
    _weightWatcherSmartPoints = weightWatcherSmartPoints;
    _gaps = gaps;
    _preparationMinutes = preparationMinutes;
    _cookingMinutes = cookingMinutes;
    _aggregateLikes = aggregateLikes;
    _healthScore = healthScore;
    _creditsText = creditsText;
    _sourceName = sourceName;
    _pricePerServing = pricePerServing;
    _extendedIngredients = extendedIngredients;
    _id = id;
    _title = title;
    _readyInMinutes = readyInMinutes;
    _servings = servings;
    _sourceUrl = sourceUrl;
    _image = image;
    _imageType = imageType;
    _summary = summary;
    _cuisines = cuisines;
    _dishTypes = dishTypes;
    _diets = diets;
    _occasions = occasions;
    _instructions = instructions;
    _analyzedInstructions = analyzedInstructions;
    _originalId = originalId;
    _spoonacularScore = spoonacularScore;
    _spoonacularSourceUrl = spoonacularSourceUrl;
  }

  RecipesInfo.fromJson(dynamic json) {
    _vegetarian = json['vegetarian'];
    _vegan = json['vegan'];
    _glutenFree = json['glutenFree'];
    _dairyFree = json['dairyFree'];
    _veryHealthy = json['veryHealthy'];
    _cheap = json['cheap'];
    _veryPopular = json['veryPopular'];
    _sustainable = json['sustainable'];
    _lowFodmap = json['lowFodmap'];
    _weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    _gaps = json['gaps'];
    _preparationMinutes = json['preparationMinutes'];
    _cookingMinutes = json['cookingMinutes'];
    _aggregateLikes = json['aggregateLikes'];
    _healthScore = json['healthScore'];
    _creditsText = json['creditsText'];
    _sourceName = json['sourceName'];
    _pricePerServing = json['pricePerServing'];
    if (json['extendedIngredients'] != null) {
      _extendedIngredients = [];
      json['extendedIngredients'].forEach((v) {
        _extendedIngredients?.add(ExtendedIngredients.fromJson(v));
      });
    }
    _id = json['id'];
    _title = json['title'];
    _readyInMinutes = json['readyInMinutes'];
    _servings = json['servings'];
    _sourceUrl = json['sourceUrl'];
    _image = json['image'];
    _imageType = json['imageType'];
    _summary = json['summary'];
    _cuisines = json['cuisines'] != null ? json['cuisines'].cast<String>() : [];
    _dishTypes =
        json['dishTypes'] != null ? json['dishTypes'].cast<String>() : [];
    _instructions = json['instructions'];
    if (json['analyzedInstructions'] != null) {
      _analyzedInstructions = [];
      json['analyzedInstructions'].forEach((v) {
        _analyzedInstructions?.add(AnalyzedInstructions.fromJson(v));
      });
    }
    _originalId = json['originalId'];
    _spoonacularScore = json['spoonacularScore'];
    _spoonacularSourceUrl = json['spoonacularSourceUrl'];
  }
  bool? _vegetarian;
  bool? _vegan;
  bool? _glutenFree;
  bool? _dairyFree;
  bool? _veryHealthy;
  bool? _cheap;
  bool? _veryPopular;
  bool? _sustainable;
  bool? _lowFodmap;
  num? _weightWatcherSmartPoints;
  String? _gaps;
  num? _preparationMinutes;
  num? _cookingMinutes;
  num? _aggregateLikes;
  num? _healthScore;
  String? _creditsText;
  String? _sourceName;
  num? _pricePerServing;
  List<ExtendedIngredients>? _extendedIngredients;
  num? _id;
  String? _title;
  num? _readyInMinutes;
  num? _servings;
  String? _sourceUrl;
  String? _image;
  String? _imageType;
  String? _summary;
  List<String>? _cuisines;
  List<String>? _dishTypes;
  List<dynamic>? _diets;
  List<dynamic>? _occasions;
  String? _instructions;
  List<AnalyzedInstructions>? _analyzedInstructions;
  dynamic _originalId;
  num? _spoonacularScore;
  String? _spoonacularSourceUrl;

  bool get vegetarian => _vegetarian ?? false;
  bool get vegan => _vegan ?? false;
  bool get glutenFree => _glutenFree ?? false;
  bool get dairyFree => _dairyFree ?? false;
  bool get veryHealthy => _veryHealthy ?? false;
  bool get cheap => _cheap ?? false;
  bool get veryPopular => _veryPopular ?? false;
  bool get sustainable => _sustainable ?? false;
  bool get lowFodmap => _lowFodmap ?? false;
  num get weightWatcherSmartPoints => _weightWatcherSmartPoints ?? 0;
  String get gaps => _gaps ?? "";
  num get preparationMinutes => _preparationMinutes ?? 0;
  num get cookingMinutes => _cookingMinutes ?? 0;
  num get aggregateLikes => _aggregateLikes ?? 0;
  num get healthScore => _healthScore ?? 0;
  String get creditsText => _creditsText ?? "";
  String get sourceName => _sourceName ?? "";
  num get pricePerServing => _pricePerServing ?? 0;
  List<ExtendedIngredients> get extendedIngredients =>
      _extendedIngredients ?? [];
  num get id => _id ?? 0;
  String get title => _title ?? "";
  num get readyInMinutes => _readyInMinutes ?? 0;
  num get servings => _servings ?? 0;
  String get sourceUrl => _sourceUrl ?? "";
  String get image => _image ?? "";
  String get imageType => _imageType ?? "";
  String get summary => _summary ?? "";
  List<String> get cuisines => _cuisines ?? [];
  List<String> get dishTypes => _dishTypes ?? [];
  List<dynamic> get diets => _diets ?? [];
  List<dynamic> get occasions => _occasions ?? [];
  String get instructions => _instructions ?? "";
  List<AnalyzedInstructions> get analyzedInstructions =>
      _analyzedInstructions ?? [];
  dynamic get originalId => _originalId;
  num get spoonacularScore => _spoonacularScore ?? 0;
  String get spoonacularSourceUrl => _spoonacularSourceUrl ?? "";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vegetarian'] = _vegetarian;
    map['vegan'] = _vegan;
    map['glutenFree'] = _glutenFree;
    map['dairyFree'] = _dairyFree;
    map['veryHealthy'] = _veryHealthy;
    map['cheap'] = _cheap;
    map['veryPopular'] = _veryPopular;
    map['sustainable'] = _sustainable;
    map['lowFodmap'] = _lowFodmap;
    map['weightWatcherSmartPoints'] = _weightWatcherSmartPoints;
    map['gaps'] = _gaps;
    map['preparationMinutes'] = _preparationMinutes;
    map['cookingMinutes'] = _cookingMinutes;
    map['aggregateLikes'] = _aggregateLikes;
    map['healthScore'] = _healthScore;
    map['creditsText'] = _creditsText;
    map['sourceName'] = _sourceName;
    map['pricePerServing'] = _pricePerServing;
    if (_extendedIngredients != null) {
      map['extendedIngredients'] =
          _extendedIngredients?.map((v) => v.toJson()).toList();
    }
    map['id'] = _id;
    map['title'] = _title;
    map['readyInMinutes'] = _readyInMinutes;
    map['servings'] = _servings;
    map['sourceUrl'] = _sourceUrl;
    map['image'] = _image;
    map['imageType'] = _imageType;
    map['summary'] = _summary;
    map['cuisines'] = _cuisines;
    map['dishTypes'] = _dishTypes;
    if (_diets != null) {
      map['diets'] = _diets?.map((v) => v.toJson()).toList();
    }
    if (_occasions != null) {
      map['occasions'] = _occasions?.map((v) => v.toJson()).toList();
    }
    map['instructions'] = _instructions;
    if (_analyzedInstructions != null) {
      map['analyzedInstructions'] =
          _analyzedInstructions?.map((v) => v.toJson()).toList();
    }
    map['originalId'] = _originalId;
    map['spoonacularScore'] = _spoonacularScore;
    map['spoonacularSourceUrl'] = _spoonacularSourceUrl;
    return map;
  }
}

/// name : ""
/// steps : [{"number":1,"step":"Mix first 4 ingredients and 1 1/2 cups of spaghetti sauce in a bowl. In a 2 1/2 quart baking dish spread 1/2 cup spaghetti sauce.","ingredients":[{"id":10011549,"name":"pasta sauce","localizedName":"pasta sauce","image":"tomato-sauce-or-pasta-sauce.jpg"},{"id":0,"name":"spread","localizedName":"spread","image":""}],"equipment":[{"id":404646,"name":"baking pan","localizedName":"baking pan","image":"roasting-pan.jpg"},{"id":404783,"name":"bowl","localizedName":"bowl","image":"bowl.jpg"}]},{"number":2,"step":"Add ziti mixture and top with remaining 1 1/2 cups of spaghetti sauce.","ingredients":[{"id":10011549,"name":"pasta sauce","localizedName":"pasta sauce","image":"tomato-sauce-or-pasta-sauce.jpg"},{"id":11520420,"name":"ziti","localizedName":"ziti","image":"ziti.jpg"}],"equipment":[]},{"number":3,"step":"Sprinkle with 1/2 cup of Parmesan cheese.","ingredients":[{"id":1033,"name":"parmesan","localizedName":"parmesan","image":"parmesan.jpg"}],"equipment":[]},{"number":4,"step":"Bake at 375 degrees for 30 minutes or until top slightly browned.","ingredients":[],"equipment":[{"id":404784,"name":"oven","localizedName":"oven","image":"oven.jpg"}],"length":{"number":30,"unit":"minutes"}}]

class AnalyzedInstructions {
  AnalyzedInstructions({
    String? name,
    List<Steps>? steps,
  }) {
    _name = name;
    _steps = steps;
  }

  AnalyzedInstructions.fromJson(dynamic json) {
    _name = json['name'];
    if (json['steps'] != null) {
      _steps = [];
      json['steps'].forEach((v) {
        _steps?.add(Steps.fromJson(v));
      });
    }
  }
  String? _name;
  List<Steps>? _steps;

  String get name => _name ?? "";
  List<Steps> get steps => _steps ?? [];

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    if (_steps != null) {
      map['steps'] = _steps?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// number : 1
/// step : "Mix first 4 ingredients and 1 1/2 cups of spaghetti sauce in a bowl. In a 2 1/2 quart baking dish spread 1/2 cup spaghetti sauce."
/// ingredients : [{"id":10011549,"name":"pasta sauce","localizedName":"pasta sauce","image":"tomato-sauce-or-pasta-sauce.jpg"},{"id":0,"name":"spread","localizedName":"spread","image":""}]
/// equipment : [{"id":404646,"name":"baking pan","localizedName":"baking pan","image":"roasting-pan.jpg"},{"id":404783,"name":"bowl","localizedName":"bowl","image":"bowl.jpg"}]

class Steps {
  Steps({
    num? number,
    String? step,
    List<Ingredients>? ingredients,
    List<Equipment>? equipment,
  }) {
    _number = number;
    _step = step;
    _ingredients = ingredients;
    _equipment = equipment;
  }

  Steps.fromJson(dynamic json) {
    _number = json['number'];
    _step = json['step'];
    if (json['ingredients'] != null) {
      _ingredients = [];
      json['ingredients'].forEach((v) {
        _ingredients?.add(Ingredients.fromJson(v));
      });
    }
    if (json['equipment'] != null) {
      _equipment = [];
      json['equipment'].forEach((v) {
        _equipment?.add(Equipment.fromJson(v));
      });
    }
  }
  num? _number;
  String? _step;
  List<Ingredients>? _ingredients;
  List<Equipment>? _equipment;

  num get number => _number ?? 0;
  String get step => _step ?? "";
  List<Ingredients> get ingredients => _ingredients ?? [];
  List<Equipment> get equipment => _equipment ?? [];

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = _number;
    map['step'] = _step;
    if (_ingredients != null) {
      map['ingredients'] = _ingredients?.map((v) => v.toJson()).toList();
    }
    if (_equipment != null) {
      map['equipment'] = _equipment?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 404646
/// name : "baking pan"
/// localizedName : "baking pan"
/// image : "roasting-pan.jpg"

class Equipment {
  Equipment({
    num? id,
    String? name,
    String? localizedName,
    String? image,
  }) {
    _id = id;
    _name = name;
    _localizedName = localizedName;
    _image = image;
  }

  Equipment.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _localizedName = json['localizedName'];
    _image = json['image'];
  }
  num? _id;
  String? _name;
  String? _localizedName;
  String? _image;

  num get id => _id ?? 0;
  String get name => _name ?? "";
  String get localizedName => _localizedName ?? "";
  String get image => _image ?? "";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['localizedName'] = _localizedName;
    map['image'] = _image;
    return map;
  }
}

/// id : 10011549
/// name : "pasta sauce"
/// localizedName : "pasta sauce"
/// image : "tomato-sauce-or-pasta-sauce.jpg"

class Ingredients {
  Ingredients({
    num? id,
    String? name,
    String? localizedName,
    String? image,
  }) {
    _id = id;
    _name = name;
    _localizedName = localizedName;
    _image = image;
  }

  Ingredients.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _localizedName = json['localizedName'];
    _image = json['image'];
  }
  num? _id;
  String? _name;
  String? _localizedName;
  String? _image;

  num get id => _id ?? 0;
  String get name => _name ?? "";
  String get localizedName => _localizedName ?? "";
  String get image => _image ?? "";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['localizedName'] = _localizedName;
    map['image'] = _image;
    return map;
  }
}

/// id : 11520421
/// aisle : "Pasta and Rice"
/// image : "ziti.jpg"
/// consistency : "SOLID"
/// name : "ziti"
/// nameClean : "cooked ziti"
/// original : "1 pound ziti, cooked"
/// originalName : "ziti, cooked"
/// amount : 1.0
/// unit : "pound"
/// meta : ["cooked"]
/// measures : {"us":{"amount":1.0,"unitShort":"lb","unitLong":"pound"},"metric":{"amount":453.592,"unitShort":"g","unitLong":"grams"}}

class ExtendedIngredients {
  ExtendedIngredients({
    num? id,
    String? aisle,
    String? image,
    String? consistency,
    String? name,
    String? nameClean,
    String? original,
    String? originalName,
    num? amount,
    String? unit,
    List<String>? meta,
    Measures? measures,
  }) {
    _id = id;
    _aisle = aisle;
    _image = image;
    _consistency = consistency;
    _name = name;
    _nameClean = nameClean;
    _original = original;
    _originalName = originalName;
    _amount = amount;
    _unit = unit;
    _meta = meta;
    _measures = measures;
  }

  ExtendedIngredients.fromJson(dynamic json) {
    _id = json['id'];
    _aisle = json['aisle'];
    _image = json['image'];
    _consistency = json['consistency'];
    _name = json['name'];
    _nameClean = json['nameClean'];
    _original = json['original'];
    _originalName = json['originalName'];
    _amount = json['amount'];
    _unit = json['unit'];
    _meta = json['meta'] != null ? json['meta'].cast<String>() : [];
    _measures =
        json['measures'] != null ? Measures.fromJson(json['measures']) : null;
  }
  num? _id;
  String? _aisle;
  String? _image;
  String? _consistency;
  String? _name;
  String? _nameClean;
  String? _original;
  String? _originalName;
  num? _amount;
  String? _unit;
  List<String>? _meta;
  Measures? _measures;

  num get id => _id ?? 0;
  String get aisle => _aisle ?? "";
  String get image => _image ?? "";
  String get consistency => _consistency ?? "";
  String get name => _name ?? "";
  String get nameClean => _nameClean ?? "";
  String get original => _original ?? "";
  String get originalName => _originalName ?? "";
  num get amount => _amount ?? 0;
  String? get unit => _unit ?? "";
  List<String>? get meta => _meta ?? [];
  Measures? get measures => _measures ?? Measures();

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['aisle'] = _aisle;
    map['image'] = _image;
    map['consistency'] = _consistency;
    map['name'] = _name;
    map['nameClean'] = _nameClean;
    map['original'] = _original;
    map['originalName'] = _originalName;
    map['amount'] = _amount;
    map['unit'] = _unit;
    map['meta'] = _meta;
    if (_measures != null) {
      map['measures'] = _measures?.toJson();
    }
    return map;
  }
}

/// us : {"amount":1.0,"unitShort":"lb","unitLong":"pound"}
/// metric : {"amount":453.592,"unitShort":"g","unitLong":"grams"}

class Measures {
  Measures({
    Us? us,
    Metric? metric,
  }) {
    _us = us;
    _metric = metric;
  }

  Measures.fromJson(dynamic json) {
    _us = json['us'] != null ? Us.fromJson(json['us']) : null;
    _metric = json['metric'] != null ? Metric.fromJson(json['metric']) : null;
  }
  Us? _us;
  Metric? _metric;

  Us get us => _us ?? Us();
  Metric get metric => _metric ?? Metric();

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_us != null) {
      map['us'] = _us?.toJson();
    }
    if (_metric != null) {
      map['metric'] = _metric?.toJson();
    }
    return map;
  }
}

/// amount : 453.592
/// unitShort : "g"
/// unitLong : "grams"

class Metric {
  Metric({
    num? amount,
    String? unitShort,
    String? unitLong,
  }) {
    _amount = amount;
    _unitShort = unitShort;
    _unitLong = unitLong;
  }

  Metric.fromJson(dynamic json) {
    _amount = json['amount'];
    _unitShort = json['unitShort'];
    _unitLong = json['unitLong'];
  }
  num? _amount;
  String? _unitShort;
  String? _unitLong;

  num get amount => _amount ?? 0;
  String get unitShort => _unitShort ?? "";
  String? get unitLong => _unitLong ?? "";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['unitShort'] = _unitShort;
    map['unitLong'] = _unitLong;
    return map;
  }
}

/// amount : 1.0
/// unitShort : "lb"
/// unitLong : "pound"

class Us {
  Us({
    num? amount,
    String? unitShort,
    String? unitLong,
  }) {
    _amount = amount;
    _unitShort = unitShort;
    _unitLong = unitLong;
  }

  Us.fromJson(dynamic json) {
    _amount = json['amount'];
    _unitShort = json['unitShort'];
    _unitLong = json['unitLong'];
  }
  num? _amount;
  String? _unitShort;
  String? _unitLong;

  num get amount => _amount ?? 0;
  String get unitShort => _unitShort ?? "";
  String get unitLong => _unitLong ?? "";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['unitShort'] = _unitShort;
    map['unitLong'] = _unitLong;
    return map;
  }


}
