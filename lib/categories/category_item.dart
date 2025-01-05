import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/apptheme.dart';
import 'package:news_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({required this.index , required this.categoryModel});
 final CategoryModel categoryModel ;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: categoryModel.color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomLeft:Radius.circular(index.isEven ? 25 :0)  ,
          bottomRight: Radius.circular(index.isOdd ? 25 : 0),
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(categoryModel.image ,
          height: 116,
          width: 132,
          ),
          Text(categoryModel.title , style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Apptheme.white,
          ),),
        ],
      ),
    );
  }
}
