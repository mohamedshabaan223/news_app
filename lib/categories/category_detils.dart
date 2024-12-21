import 'package:flutter/material.dart';
import 'package:news_app/apptheme.dart';
import 'package:news_app/articals/artical_list.dart';

class CategoryDetils extends StatelessWidget {
  const CategoryDetils({super.key});

  static List<String> sources =[
  'BBC',
  'CBC',
   'ALARABYA',
    'ALARABYA',
     'ALARABYA',
      'ALARABYA',
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: sources.length,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TabBar(
                dividerHeight: 0,
               indicatorColor: Apptheme.white,
               tabAlignment: TabAlignment.start,
              isScrollable: true,
                indicator: BoxDecoration(
                  color: Apptheme.green,
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: Apptheme.white,
                unselectedLabelColor: Apptheme.green,
                tabs: sources.map((sources) =>Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7 , horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Apptheme.green),
                  ),
                  child: Text(sources ),
                )
              )).toList()),
              Expanded(
                child: TabBarView(children: 
                sources.map((sources) =>ArticalList()).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}