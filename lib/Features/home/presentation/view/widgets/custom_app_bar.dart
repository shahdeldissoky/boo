import 'package:book_app/core/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26,right: 26,bottom: 10, top: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
            width: 100,
          ),
          const Spacer(),
          IconButton(onPressed: (){}
          , icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 26,
          ))
        ],
      ),
    );
  }
}