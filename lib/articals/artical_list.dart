import 'package:flutter/material.dart';
import 'package:news_app/articals/artical_item.dart';
import 'package:news_app/models/articals_model.dart';

class ArticalList extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context , index) =>ArticalItem(articalsModel: ArticalsModel.articals[index]), 
      separatorBuilder: (_ , index) =>Divider(), 
      itemCount: ArticalsModel.articals.length,
      
      );
  }
}