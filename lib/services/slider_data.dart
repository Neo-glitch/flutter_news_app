// gets the list of slider model for carousel
import 'package:flutter_news_app/model/slider_model.dart';

List<SliderModel> getSliders() {
  List<SliderModel> sliders = [];

  final sliderModelOne = SliderModel()
    ..name = "Bow To The Authority of Slideforce"
    ..image = "assets/images/business.jpg";

  final sliderModeltTwo = SliderModel()
    ..name = "Bow To The Authority of Slideforce"
    ..image = "assets/images/business.jpg";

  final sliderModelThree = SliderModel()
    ..name = "Bow To The Authority of Slideforce"
    ..image = "assets/images/business.jpg";

  sliders = [sliderModelOne, sliderModeltTwo, sliderModelThree];
  return sliders;
}
