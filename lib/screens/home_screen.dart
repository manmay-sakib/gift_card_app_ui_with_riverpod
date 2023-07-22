import 'package:flutter/material.dart';
import 'package:gift_card_app_ui_with_riverpod/gen/fonts.gen.dart';
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
      body: Container(),
    );
  }
}
