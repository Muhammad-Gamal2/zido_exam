import 'package:bloc/bloc.dart';

class TabBarCubit extends Cubit<int> {
  TabBarCubit() : super(0);

  void switchTab(int index){
    emit(index);
  }
}
