import 'package:flutter_bloc/flutter_bloc.dart';

part 'bagState.dart';


class BagCubit extends Cubit<BagState> {
  BagCubit() : super(BagState([]));

  void addToBag(String item) {
    List<String> updatedItems = List.from(state.items)..add(item);
    emit(BagState(updatedItems));
  }

  void removeFromBag(String item) {
    List<String> updatedItems = List.from(state.items)..remove(item);
    emit(BagState(updatedItems));
  }
}
