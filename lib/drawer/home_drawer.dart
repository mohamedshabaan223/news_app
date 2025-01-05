import 'package:flutter/material.dart';
import 'package:news_app/apptheme.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer({required this.onSelectedDrawer});
   
 void Function(DrawerItem) onSelectedDrawer;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 326,
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.zero),
      backgroundColor: Apptheme.white,
      child: Column(
        children: [
          Container(
            height: 140,
           alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Apptheme.green,

            ),
            child: Text('News App' , style: Theme.of(context).textTheme.titleMedium,),
          ),
          ListTile(
            onTap: () => onSelectedDrawer(DrawerItem.category),
            leading: Icon(Icons.list , color: Apptheme.black , size: 35,),
             title: Text('category' , style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Apptheme.black),
             ),
          ),
          ListTile(
            onTap: () => onSelectedDrawer(DrawerItem.settings),
            leading: Icon(Icons.settings , color: Apptheme.black , size: 30,),
             title: Text('settings' , style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Apptheme.black),
             ),
          ),
          
        ],
      ),
    );
  }
}

enum DrawerItem{
  category , 
  settings,
}
