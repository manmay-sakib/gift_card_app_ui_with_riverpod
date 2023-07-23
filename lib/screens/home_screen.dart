import 'package:flutter/material.dart';
import 'package:gift_card_app_ui_with_riverpod/gen/colors.gen.dart';
import 'package:gift_card_app_ui_with_riverpod/gen/fonts.gen.dart';
import 'package:gift_card_app_ui_with_riverpod/model/card_model.dart';
import 'package:gift_card_app_ui_with_riverpod/repositories/card_repository.dart';
import 'package:gift_card_app_ui_with_riverpod/utilities/card_category_extensions.dart';
import 'package:gift_card_app_ui_with_riverpod/widgets/app_text.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custom_gift_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      bottomNavigationBar: CustomNavBar(
        index: 0,
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
            SizedBox(
              height: 10,
            ),
            _CardGrid(),
          ],
        ),
      ),
    );
  }
}

class _CardGrid extends ConsumerWidget {
  const _CardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final CardRepository cardRepository = ref.watch(cardRepositoryProvider);
    var allCards = cardRepository.getAllCards();
    return SizedBox(
      height: size.height * 0.65,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Center(
            child: CustomGiftCard(
              card: CardModel.sampleCards[0],
              width: size.width * 0.425,
            ),
          );
        }),
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
          prefixIcon: const Icon(Icons.search),
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
              label: category.capitalName(),
            ),
          ),
        ],
      ),
    );
  }
}
