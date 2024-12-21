class ArticalsModel {
  String title;
  String image;
  String source;
  DateTime date;
  ArticalsModel({required this.image , required this.source , required this.title , required this.date});

  static List<ArticalsModel> articals =[
     ArticalsModel(image: 'https://optim.tildacdn.net/tild6666-3964-4837-b736-333931393161/-/format/webp/AI_10_year_car_exter.png', 
     source: 'BBC news', 
     title: 'Why are footballs biggest clubs starting a new tournament?', 
     date: DateTime.now().subtract(Duration(days: 15))),

   ArticalsModel(image: 'https://optim.tildacdn.net/tild6666-3964-4837-b736-333931393161/-/format/webp/AI_10_year_car_exter.png',
    source: 'BBC news',
     title: 'Why are footballs biggest clubs starting a new tournament?', 
    date: DateTime.now().subtract(Duration(hours: 5))),

  ArticalsModel(image: 'https://optim.tildacdn.net/tild6666-3964-4837-b736-333931393161/-/format/webp/AI_10_year_car_exter.png',
   source: 'BBC news',
   title: 'Why are footballs biggest clubs starting a new tournament?',
   date: DateTime.now()),
  ];
}