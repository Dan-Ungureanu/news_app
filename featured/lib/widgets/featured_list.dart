// import 'package:domain/entities/article_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';

// class featuredList extends StatelessWidget {
//   final List<ArticleEntity> articles;
//   featuredList(
//     RxList<ArticleEntity> newsList, {
//     super.key,
//     required this.articles,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 252,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 3,
//         itemBuilder: (context, index) {
//           return Container(
//             width: 310,
//             margin: const EdgeInsets.all(10.0),
//             decoration: BoxDecoration(
//               color: Colors.grey[600],
//               borderRadius: BorderRadius.circular(15.0),
//               border: Border.all(color: Colors.black, width: 0.2),
//               image: DecorationImage(
//                 image: AssetImage('images/Image.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Column(
//               children: [
//                 Spacer(),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10.0),
//                       child: Row(
//                         children: [
//                           Text(
//                             'Text for Image ${index + 1}',
//                             style: Theme.of(context).textTheme.bodyMedium
//                                 ?.copyWith(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                             textAlign: TextAlign.start,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 10.0),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 93,
//                         height: 36,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(25.0),
//                           color: Colors.red.shade300,
//                         ),
//                         margin: EdgeInsets.all(10.0),
//                         child: TextButton(
//                           onPressed: () => print('Read More pushed'),
//                           child: Text(
//                             'Read Now',
//                             style: Theme.of(context).textTheme.bodyMedium
//                                 ?.copyWith(color: Colors.white, fontSize: 12.0),

//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// import 'package:domain/domain.dart';
import 'package:domain/entities/article_entity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class featuredList extends StatelessWidget {
  final RxList<ArticleEntity> newsList;
  const featuredList(this.newsList, {super.key});

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
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.black, width: 0.2),
                image: article.urlToImage != null
                    ? DecorationImage(
                        image: NetworkImage(article.urlToImage!),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          article.title ?? 'No title',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: 93,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.red.shade300,
                          ),
                          margin: const EdgeInsets.all(10.0),
                          child: TextButton(
                            onPressed: () {
                              // Deschizi link-ul sau navighezi la detalii
                              print('Read More pressed: ${article.url}');
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
                      ],
                    ),
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
