import 'package:flutter/material.dart';
import 'package:news_app/models/articals_model.dart';
import 'package:timeago/timeago.dart' as timeago;


class ArticalItem extends StatelessWidget {
  ArticalItem({required this.articalsModel});
  ArticalsModel articalsModel ;

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(articalsModel.image,
            width: double.infinity,
            height: 232,
            fit: BoxFit.cover,),
            Text(articalsModel.source , style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFF79828B)
            ),),
            Text(articalsModel.title, style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF42505C)
            ),),
            Align(
              alignment: Alignment.centerRight,
              child: Text(timeago.format(articalsModel.date) , style: TextStyle(
               fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xFFA3A3A3)
            
              ),)),
          ],
        
            ),
      );
  }
}