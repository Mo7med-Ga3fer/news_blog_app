part of 'get_news_cubit.dart';

@immutable
abstract class GetNewsState {}

class GetNewsInitial extends GetNewsState {}
class GetNewsLoading extends GetNewsState {}
class GetNewsSucces extends GetNewsState {
  final List<NewsModel> newsData;


  GetNewsSucces({required this.newsData});

}
class GetNewsFailure extends GetNewsState {
  final String errorMessage;
  GetNewsFailure({required this.errorMessage});
}
