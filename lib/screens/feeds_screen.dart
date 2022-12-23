import 'package:flutter/material.dart';
import 'package:product_api/models/products_model.dart';
import 'package:product_api/services/api_handler.dart';
import 'package:product_api/widgets/feeds_widget.dart';
import 'package:provider/provider.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<ProductsModel> productsList = [];

  // void didChangeDependencies() {
  //   getProducts();
  //   super.didChangeDependencies();
  // }

  // // Create function
  // Future<void> getProducts() async {
  //   productsList = await APIHandler.getAllProducts();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('All Products'),
      ),
      body: productsList.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              // shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                childAspectRatio: 0.7,
              ),
              itemCount: productsList.length,
              itemBuilder: (context, index) {
                return ChangeNotifierProvider.value(
                    value: productsList[index], child: const FeedsWidget());
              },
            ),
    );
  }
}
