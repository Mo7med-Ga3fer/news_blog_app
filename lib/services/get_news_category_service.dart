import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/articles_model.dart';
import '../models/news_model.dart';

class GetNewsCategoryService
{

final String apiKey = '8495f739dd0f4833b8376f404fc18b26';
Future<List<NewsModel>> GetNewsCategoryData({required String category}) async{
  String url = 'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$apiKey';
  
    var response = await http.get(Uri.parse(url));
    var jsonResponse = json.decode(response.body) as Map<String, dynamic>;
    
    Articles articlesData = Articles.fromJson(jsonResponse);
    
    List<NewsModel> newsDataList = articlesData.articles.map((e) => NewsModel.fromJson(e)).toList();
    return newsDataList;
}
}
