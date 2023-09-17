
import 'package:news/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class News{
  List<ArticaleModel>news = [];

 Future<void> getNews() async{

  String url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=76b38f71f98f49c8895b7b916704341f";

 var response = await http.get(Uri.parse(url));

 var jsonData = jsonDecode(response.body); 
  if(jsonData['status']== "ok"){
    jsonData["articles"].forEach((element){

     if(element["urlToImage"]!= null && element['description'] != null) {
      ArticaleModel articaleModel = ArticaleModel(
       title: element['title'], 
       author: element["author"],
       description:element["description"],
       url: element["url"],
       urlToImage: element["urlToImage"],
       content: element["content"],
      );
      news.add(articaleModel);
     }
    });
  }

 }
}

class CategoryNewsClass{
  List<ArticaleModel>news = [];

 Future<void> getNews(String category) async{

  String url = "https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=76b38f71f98f49c8895b7b916704341f";

 var response = await http.get(Uri.parse(url));

 var jsonData = jsonDecode(response.body); 
  if(jsonData['status']== "ok"){
    jsonData["articles"].forEach((element){

     if(element["urlToImage"]!= null && element['description'] != null) {
      ArticaleModel articaleModel = ArticaleModel(
       title: element['title'], 
       author: element["author"],
       description:element["description"],
       url: element["url"],
       urlToImage: element["urlToImage"],
       content: element["content"],
      );
      news.add(articaleModel);
     }
    });
  }

 }
}