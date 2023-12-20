import 'package:flutter/material.dart';
import 'package:interview_test/core/extension/dynamic_size.dart';

class ListViewContainer extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String price;
  final String rating;
  final String ratingCount;
  final String description;

  const ListViewContainer(
      {super.key,
      required this.rating,
      required this.imageUrl,
      required this.description,
      required this.ratingCount,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.width(7)),
      decoration: BoxDecoration(
        border: Border.all(width: context.width(0.5)),
        color: const Color(0xFFF1F0F0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(context.width(15)),
            // child: CachedNetworkImage(
            //   cacheKey: name,
            //   imageUrl: imageUrl,
            //   fit: BoxFit.cover,
            //   width: 150,
            //   height: 140,
            //   placeholder: (context, url) => const Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // ),
            child: Image.network(
              imageUrl,
              width: 150,
              height: 140,
            ),
          ),
          SizedBox(
              width: 150,
              child: Text(
                description,
                maxLines: 13,
                overflow: TextOverflow.ellipsis,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    '\t\$ $price',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: context.width(16),
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const SizedBox(width: 50),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(context.width(15)),
                    color: Colors.red[200]),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: '⭐$rating ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: context.width(15)),
                  ),
                  TextSpan(
                      text: '($ratingCount)',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: context.width(12)))
                ])),
              )
            ],
          ),
        ],
      ),
    );
  }
}
