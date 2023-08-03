import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_blog_app/models/news_model.dart';
import 'package:news_blog_app/services/get_news_service.dart';
import '../../services/get_news_category_service.dart';
part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());
  List<NewsModel> newsDataList = [];
  List<NewsModel> newsCategoryList = [];

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

  getCategoryData({required String category})async {
    emit(GetNewsLoading());
    try {
      newsCategoryList = await GetNewsCategoryService().GetNewsCategoryData(category: category);
      emit(GetNewsSucces(
        newsData: newsCategoryList
      ));
    } catch (e) {
      print(e.toString());
      emit(GetNewsFailure(
        errorMessage: 'There is an error: ${e.toString()}'
        ));
    }
  }

}
