import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/color.dart';

class TabBarItem extends StatelessWidget {
  final bool isActive;
  final String icon;

  const TabBarItem({super.key, this.isActive = false, this.icon = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
              width: 25,
              height: 25,
              child: SvgPicture.asset(icon, color: white.withOpacity(0.4),)
          ),
          const SizedBox(
            height: 10,
          ),
          isActive
              ? Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                      color: secondPrimary,
                      borderRadius: BorderRadius.circular(100)),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
