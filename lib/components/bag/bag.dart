import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bagCubit.dart';


class BagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BagCubit, BagState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bag Screen'),
              Text('Items in Bag: ${state.items}'),
              ElevatedButton(
                onPressed: () {
                  // Add item to the bag
                  context.read<BagCubit>().addToBag('Item 1');
                },
                child: Text('Add to Bag'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Remove item from the bag
                  context.read<BagCubit>().removeFromBag('Item 1');
                },
                child: Text('Remove from Bag'),
              ),
            ],
          ),
        );
      },
    );
  }
}