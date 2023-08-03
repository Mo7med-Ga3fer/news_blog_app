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
      urlToImage: jsonData['urlToImage'] ?? '',
      publishedAt: jsonData['publishedAt'] ?? '',
      content: jsonData['content'] ?? '',
      author: jsonData['author'] ?? '',
      );
  }
}