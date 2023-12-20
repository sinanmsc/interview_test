import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/provider/product_api_provider.dart';
import 'package:interview_test/view/product_page/widgets/drawer_widget.dart';
import 'package:interview_test/view/product_page/widgets/product_list_builder.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  ListView productList(List data) {
    final categories = <String>[];
    for (final product in data) {
      if (!categories.contains(product.category)) {
        categories.add(product.category);
      }
    }
    return ListView.separated(
      itemBuilder: (context, index) {
        return ProductList(category: categories[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: const Text('Our Products'),
        centerTitle: true,
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 13, top: 13),
        child: ref.watch(getProductProvider).when(
          data: (data) {
            if (data == null) {
              return const Center(
                child: Text('No content'),
              );
            }
            return productList(data);
          },
          error: (error, stackTrace) {
            return const Center(
              child: Text('Something went wrong'),
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
