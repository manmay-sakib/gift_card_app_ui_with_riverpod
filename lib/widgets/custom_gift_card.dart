import 'package:flutter/cupertino.dart';
import 'package:gift_card_app_ui_with_riverpod/widgets/app_text.dart';

import '../model/card_model.dart';

class CustomGiftCard extends StatelessWidget {
  final CardModel card;
  final double width;
  final bool showLabel;
  final bool showValue;

  const CustomGiftCard({
    super.key,
    required this.card,
    required this.width,
    this.showLabel = true,
    this.showValue = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Image.asset(
                card.thumbnailPath,
                fit: BoxFit.cover,
              ),
            ),
            if (showLabel) ...[
              SizedBox(
                height: 10,
              ),
              AppText.medium(card.name),
            ]
          ],
        ),
        if (showValue)
          Positioned(
            bottom: 10,
            right: 10,
            child: AppText.large(
              "\$value",
            ),
          ),
      ],
    );
  }
}
