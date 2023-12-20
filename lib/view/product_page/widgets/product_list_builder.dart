import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/provider/product_api_provider.dart';
import 'package:interview_test/view/product_page/widgets/listview_container.dart';

class ProductList extends ConsumerWidget {
  final String category;
  const ProductList({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${category[0].toUpperCase()}${category.substring(1)}',
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(
            height: 500,
            child: ref.watch(getProductProvider).when(
                  data: (data) {
                    if (data == null) {
                      return const Text('Somthing wrong');
                    }

                    final products = data
                        .where((product) => product.category == category)
                        .toList();

                    return ListView.separated(
                      padding: const EdgeInsets.only(top: 8),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      shrinkWrap: true,
                      itemCount: products.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => ListViewContainer(
                        description: products[index].description!,
                        name: products[index].title,
                        price: products[index].price.toString(),
                        rating: products[index].rating['rate'].toString(),
                        ratingCount: products[index].rating['count'].toString(),
                        imageUrl: products[index].image,
                      ),
                    );
                  },
                  error: (error, stackTrace) => Center(
                    child: Text('$error'),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                )),
      ],
    );
  }
}
