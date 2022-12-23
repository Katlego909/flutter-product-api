import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FancyShimmerImage(
              height: size.width * 0.45,
              width: size.width * 0.45,
              errorWidget: const Icon(
                IconlyBold.danger,
                color: Colors.red,
                size: 28,
              ),
              imageUrl:
                  'https://th.bing.com/th/id/R.82aed98241d7abfe03887e76ad97104d?rik=deg7iQVquCMq4g&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0324%2f6781%2f2487%2fproducts%2fadidas-forum-low-aq1261-2_35e977e8-83d1-4a8b-8d73-98a341d3d041_1024x.png%3fv%3d1595541364&ehk=T5AnfwJeuX2f9fqQDa%2fxFlLLUFhkLqBN4FzqUTi%2b4h8%3d&risl=&pid=ImgRaw&r=0',
              boxFit: BoxFit.contain,
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Category Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
