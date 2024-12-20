import 'package:flutter/material.dart';
import 'package:news_app/apptheme.dart';
import 'package:news_app/categories/category_detils.dart';
import 'package:news_app/categories/category_grid.dart';
import 'package:news_app/drawer/home_drawer.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/settings/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DrawerItem onSelectedDrawer = DrawerItem.category;
  CategoryModel? categoryModel ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Apptheme.white,
        image: DecorationImage(
          image: AssetImage('assets/images/pattern.png'),
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(categoryModel != null ? categoryModel!.title : onSelectedDrawer ==DrawerItem.category ? 'News App ' :'settings' , style: Theme.of(context).textTheme.titleMedium,),
        ),
        drawer: HomeDrawer(onSelectedDrawer: onSelectedDrawerItem,),
        body:  categoryModel != null ? CategoryDetils():onSelectedDrawer == DrawerItem.category? CategoryGrid(onSelectedCategory: onCategorySelected,) :Settings() ,
      ),
    );
  }

  void onSelectedDrawerItem(DrawerItem item){
   onSelectedDrawer = item;
   categoryModel = null;
   setState(() {
   });
   Navigator.of(context).pop();
  }
  void onCategorySelected(CategoryModel category){
  categoryModel = category;
  setState(() {
    
  });
  }
}