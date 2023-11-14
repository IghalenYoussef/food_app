import 'package:flutter/material.dart';

import '../color.dart';

class CategoryItem extends StatelessWidget {

  final String  image;
  final String  title;
  const CategoryItem({super.key, this.image = "", this.title = ""});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 140,
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
