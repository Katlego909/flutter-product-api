import 'package:flutter/material.dart';
import 'package:product_api/models/products_model.dart';
import 'package:product_api/widgets/feeds_widget.dart';
import 'package:provider/provider.dart';

class FeedsGridWidget extends StatelessWidget {
  const FeedsGridWidget({super.key, required this.productsList});

  // initialize list
  final List<ProductsModel> productsList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 0.0,
        childAspectRatio: 0.7,
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
          value: productsList[index],
          child: const FeedsWidget(),
        );
      },
    );
  }
}
