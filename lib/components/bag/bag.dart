import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bagCubit.dart';


class BagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BagCubit, BagState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [

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
              ],
            ),
          ),
        );
      },
    );
  }
}