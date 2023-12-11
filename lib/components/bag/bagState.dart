part of 'bagCubit.dart';

abstract class BagEvent {}

class AddToBag extends BagEvent {
  final String item;

  AddToBag(this.item);
}

class RemoveFromBag extends BagEvent {
  final String item;

  RemoveFromBag(this.item);
}

// State
class BagState {
  final List<String> items;

  BagState(this.items);
}