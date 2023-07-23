import 'package:gift_card_app_ui_with_riverpod/model/card_model.dart';

extension CardCategoryExtension on CardCategory {
  String capitalName() =>
      name[0].toUpperCase() + name.substring(1, name.length).toLowerCase();
}
