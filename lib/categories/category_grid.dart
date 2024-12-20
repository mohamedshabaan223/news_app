import 'package:flutter/material.dart';
import 'package:news_app/categories/category_item.dart';
import 'package:news_app/models/category_model.dart';

class CategoryGrid extends StatelessWidget {
   CategoryGrid({required this.onSelectedCategory});
  void Function(CategoryModel) onSelectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text('Pick your category of interest' , style: Theme.of(context).textTheme.titleSmall,),
            ),
        
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                  
      
                  ),
                   itemBuilder: (_ , index) => GestureDetector(
                    onTap: () => onSelectedCategory(CategoryModel.category[index]),
                     child: CategoryItem(
                      categoryModel: CategoryModel.category[index],
                       index: index,),
                   ),
                   itemCount: CategoryModel.category.length,),
            )
          ],
        ),
      ),
    );
  }
}