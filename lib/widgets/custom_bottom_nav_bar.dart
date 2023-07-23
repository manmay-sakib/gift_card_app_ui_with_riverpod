import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift_card_app_ui_with_riverpod/gen/colors.gen.dart';
import 'package:gift_card_app_ui_with_riverpod/screens/home_screen.dart';

import '../gen/assets.gen.dart';

class CustomNavBar extends StatelessWidget {
  final int index;
  const CustomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavBarIcon(
              iconPath: Assets.icons.home,
              isSelected: index == 0,
              onTap: index != 0
                  ? () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    }
                  : null,
            ),
            _NavBarIcon(iconPath: Assets.icons.discover, isSelected: false),
            _NavBarIcon(iconPath: Assets.icons.gift, isSelected: false),
            _NavBarIcon(iconPath: Assets.icons.card, isSelected: false),
          ],
        ),
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final String iconPath;
  final Function()? onTap;
  final bool isSelected;
  const _NavBarIcon({
    Key? key,
    required this.iconPath,
    this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? ColorName.primaryColor : ColorName.disabledGrey;
    return InkWell(
      onTap: onTap,
      child: Center(
        child: SvgPicture.asset(
          iconPath,
          color: color,
        ),
      ),
    );
  }
}
