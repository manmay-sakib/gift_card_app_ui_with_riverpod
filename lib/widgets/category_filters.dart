import 'package:flutter/cupertino.dart';
import 'package:gift_card_app_ui_with_riverpod/utilities/card_category_extensions.dart';
import '../model/card_model.dart';
import 'custom_chip.dart';

class _CategoryFilters extends StatelessWidget {
  const _CategoryFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ...CardCategory.values.map(
            (category) => CustomChip(
              label: category.capitalName(),
            ),
          ),
        ],
      ),
    );
  }
}
