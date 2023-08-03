import 'package:intl/intl.dart';
class NewsModel

{
  final String title;
  final String urlToImage;
  final String publishedAt;
  final String content;
  final String author;

  NewsModel({
    required this.title,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
    required this.author,
    });

  factory NewsModel.fromJson(Map<String, dynamic> jsonData){
    return NewsModel(
      title: jsonData['title'] ?? '',
      urlToImage: jsonData['urlToImage'] ?? 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg',
      publishedAt: DateFormat.yMMMd().format(DateTime.parse(jsonData['publishedAt'])).toString() ?? '',
      content: jsonData['content'] ?? '',
      author: jsonData['author'] ?? '',
      );
  }
}

//