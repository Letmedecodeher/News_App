import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {

  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  NewsContainer({super.key,
  required this.imgUrl,
  required this.newsHead,
  required this.newsDes,
  required this.newsUrl
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.network(
        height: 350,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover
        ,imgUrl),
        SizedBox(height: 10,),
        Text(newsHead, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
        Text(newsDes, style: TextStyle(fontSize: 16),),
        Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(onPressed: (){
                print("GOING TO $newsUrl");
                        }, child: Text("Read More")),
              ),
            ],
          ),
          SizedBox(height: 30,)
      ],),
    );
  }
}
