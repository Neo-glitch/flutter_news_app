import 'package:flutter_news_app/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];
  final businessCategoryModel = CategoryModel()
    ..categoryName = "Business"
    ..image = "assets/images/business.jpg";

  final entertainmentCategoryModel = CategoryModel()
    ..categoryName = "Entertainment"
    ..image = "assets/images/entertainment.jpg";

  final generalCategoryModel = CategoryModel()
    ..categoryName = "General"
    ..image = "assets/images/general.jpg";

  final healthCategoryModel = CategoryModel()
    ..categoryName = "Health"
    ..image = "assets/images/health.jpg";

  final scienceCategoryModel = CategoryModel()
    ..categoryName = "Science"
    ..image = "assets/images/science.jpg";

  final sportsCategoryModel = CategoryModel()
    ..categoryName = "Sports"
    ..image = "assets/images/sports.jpg";

  categories.add(businessCategoryModel);
  categories.add(entertainmentCategoryModel);
  categories.add(generalCategoryModel);
  categories.add(healthCategoryModel);
  categories.add(scienceCategoryModel);
  categories.add(sportsCategoryModel);
  return categories;
}
