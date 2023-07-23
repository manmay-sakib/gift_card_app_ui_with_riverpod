import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';

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
