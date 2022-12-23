import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final titleStyle = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          const BackButton(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text('Lorem Ipusm',
                          textAlign: TextAlign.start, style: titleStyle),
                    ),
                    Flexible(
                      flex: 1,
                      child: RichText(
                        text: const TextSpan(
                            text: '\R',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: '180',
                                style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.4,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return FancyShimmerImage(
                  width: double.infinity,
                  imageUrl:
                      'https://th.bing.com/th/id/R.82aed98241d7abfe03887e76ad97104d?rik=deg7iQVquCMq4g&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0324%2f6781%2f2487%2fproducts%2fadidas-forum-low-aq1261-2_35e977e8-83d1-4a8b-8d73-98a341d3d041_1024x.png%3fv%3d1595541364&ehk=T5AnfwJeuX2f9fqQDa%2fxFlLLUFhkLqBN4FzqUTi%2b4h8%3d&risl=&pid=ImgRaw&r=0',
                  boxFit: BoxFit.contain,
                );
              },
              autoplay: true,
              itemCount: 3,
              pagination: const SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: DotSwiperPaginationBuilder(
                    color: Colors.white,
                    activeColor: Colors.red,
                  )),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum is simply dummy text of the printing and type setting industry',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
