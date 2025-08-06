// import 'package:domain/entities/article_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class FeaturedList extends StatelessWidget {
//   final RxList<ArticleEntity> newsList;
//   const FeaturedList(this.newsList, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return SizedBox(
//         height: 252,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: newsList.length,
//           itemBuilder: (context, index) {
//             final article = newsList[index];
//             print(article.author);
//             return Container(
//               width: 310,
//               clipBehavior: Clip.hardEdge,
//               margin: const EdgeInsets.all(10.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[600],

//                 borderRadius: BorderRadius.circular(15.0),
//                 border: Border.all(color: Colors.black, width: 0.2),
//                 image: article.urlToImage != null
//                     ? DecorationImage(
//                         image: NetworkImage(article.urlToImage!),

//                         fit: BoxFit.cover,
//                       )
//                     : null,
//               ),
//               child: Column(
//                 children: [
//                   const Spacer(),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10.0),
//                         child: Text(
//                           article.title!,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           style: Theme.of(context).textTheme.bodyMedium
//                               ?.copyWith(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 10.0),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 93,
//                           height: 36,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(25.0),
//                             color: Colors.red.shade300,
//                           ),
//                           margin: const EdgeInsets.all(10.0),
//                           child: TextButton(
//                             onPressed: () {
//                               // Deschizi link-ul sau navighezi la detalii
//                               print('Read More pressed: ${article.url}');
//                             },
//                             child: Text(
//                               'Read Now',
//                               style: Theme.of(context).textTheme.bodyMedium
//                                   ?.copyWith(
//                                     color: Colors.white,
//                                     fontSize: 12.0,
//                                   ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       );
//     });
//   }
// }
import 'package:featured/cards/info_cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:domain/entities/article_entity.dart';

class FeaturedList extends StatelessWidget {
  final RxList<ArticleEntity> newsList;
  const FeaturedList(this.newsList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 252,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            final article = newsList[index];
            return Container(
              width: 310,
              margin: const EdgeInsets.all(10.0),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.black, width: 0.2),
                color: Colors.grey[800],
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // if (article.urlToImage != null)
                  //   Image.network(article.urlToImage!, fit: BoxFit.cover),
                  article.urlToImage != null
                      ? Image.network(
                          article.urlToImage!,
                          fit: BoxFit.cover,
                          // width: 156,
                          // height: 156,
                        )
                      : Image.asset(
                          'images/no-image.png',
                          fit: BoxFit.cover,
                          scale: 20,
                          width: 156,
                          height: 156,
                        ),

                  Column(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4),
                              Text(
                                article.title ?? 'No title',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          bottom: 10.0,
                          top: 10.0,
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 93,
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.red.shade300,
                            ),
                            child: TextButton(
                              onPressed: () {
                                Get.to(
                                  () => const ArticleDetailsPage(),
                                  arguments: article,
                                );
                              },
                              child: Text(
                                'Read Now',
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
