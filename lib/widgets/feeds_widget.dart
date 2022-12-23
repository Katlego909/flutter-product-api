import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:product_api/models/products_model.dart';
import 'package:product_api/screens/detail_screen.dart';
import 'package:provider/provider.dart';

class FeedsWidget extends StatelessWidget {
  const FeedsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductsModel productsModelProvider =
        Provider.of<ProductsModel>(context);

    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        child: InkWell(
            focusColor: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(8.0),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: DetailScreen(), type: PageTransitionType.fade));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        child: RichText(
                          text: TextSpan(
                              text: '\R',
                              style: TextStyle(
                                  color: Color.fromRGBO(33, 150, 243, 1)),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '${productsModelProvider.price}',
                                ),
                              ]),
                        ),
                      ),
                      const Icon(
                        IconlyBold.heart,
                        color: Colors.red,
                        size: 18,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FancyShimmerImage(
                    height: size.height * 0.2,
                    width: double.infinity,
                    imageUrl: productsModelProvider.images![0],
                    boxFit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    productsModelProvider.title.toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
              ],
            )),
      ),
    );
  }
}
