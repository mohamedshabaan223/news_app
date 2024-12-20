import 'package:flutter/material.dart';

class CategoryModel {
  String id;
  String image;
  String title;
  Color color ;
  CategoryModel({required this.id, required this.image , required this.title , required this.color ,});
  
 static List<CategoryModel> category =[
  
 CategoryModel(id: 'sports', image: 'assets/images/sports.png', title: 'Sport', color: Color(0xFFC91C22 )),
 CategoryModel(id: 'general', image: 'assets/images/Politics.png', title: 'Genral', color: Color(0xFF003E90)),
 CategoryModel(id: 'health', image: 'assets/images/health.png', title: 'Health', color: Color(0xFFED1E79)),
 CategoryModel(id: 'business', image: 'assets/images/bussines.png', title: 'Business', color: Color(0xFFCF7E48)),
 CategoryModel(id: 'entertainment', image: 'assets/images/environment.png', title: 'Enviroment', color: Color(0xFF4882CF)),
 CategoryModel(id: 'science', image: 'assets/images/science.png', title: 'Science', color: Color(0xFFF2D352)),
  ];
}