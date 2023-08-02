class NewsModel
{
  final String title;
  final String urlToImage;
  final String publishedAt;
  final String content;

  NewsModel({
    required this.title,
    required this.urlToImage,
    required this.publishedAt,
    required this.content});

  factory NewsModel.fromJson(Map<String, dynamic> jsonData){
    return NewsModel(
      title: jsonData['title'] ?? '',
      urlToImage: jsonData['urlToImage'] ?? '',
      publishedAt: jsonData['publishedAt'] ?? '',
      content: jsonData['content']?? '',
      );
  }
}