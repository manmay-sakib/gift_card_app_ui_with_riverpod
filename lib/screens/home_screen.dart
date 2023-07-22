import 'package:flutter/material.dart';
import 'package:gift_card_app_ui_with_riverpod/gen/colors.gen.dart';
import 'package:gift_card_app_ui_with_riverpod/gen/fonts.gen.dart';
import 'package:gift_card_app_ui_with_riverpod/model/card_model.dart';
import 'package:gift_card_app_ui_with_riverpod/widgets/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: AppText.title("Gift Card"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            _SearchBar(),
            SizedBox(
              height: 10,
            ),
            _CategoryFilters(),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorName.lightGrey,
          hintText: "Search Card",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}

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
              label: category.name,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  const CustomChip({
    Key? key,
    required this.label,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: isSelected ? ColorName.primaryColor : ColorName.disabledGrey,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: AppText.small(label),
      ),
    );
  }
}
