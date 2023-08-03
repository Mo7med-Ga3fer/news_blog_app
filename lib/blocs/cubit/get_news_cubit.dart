import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_blog_app/models/news_model.dart';
import 'package:news_blog_app/services/get_news_service.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());
  List<NewsModel> newsDataList = [];

  gatData()async{
    emit(GetNewsLoading());
    try {
      newsDataList = await GetNewsService().GetNewsData();
      emit(GetNewsSucces(
        newsData: newsDataList
      ));
    } catch (e) {
      print(e.toString());
      emit(GetNewsFailure(
        errorMessage: 'There is an error: ${e.toString()}'
        ));
    }
  }

}
