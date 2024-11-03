import 'package:book_app/core/utilities/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            image: const DecorationImage(
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
              ),
          ),
        ),
      ),
    );
  }
}
