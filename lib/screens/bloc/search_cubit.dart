import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpapers/screens/bloc/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());


  // ignore: prefer_typing_uninitialized_variables
  var searchData;
  TextEditingController controller = TextEditingController();

  void addSearch(var v)async{
    searchData = v;
    emit(TextState());
  }
}