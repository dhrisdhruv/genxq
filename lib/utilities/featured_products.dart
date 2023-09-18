import 'package:flutter/material.dart';
import 'package:genxq/data/featured_products_data.dart';
import 'package:genxq/utilities/featured_products.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

class FeaturedProducts extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Product>> featured_products = ref.watch(featuredProductsProvider);
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
         child: ListView(
           shrinkWrap: true,
           physics: ClampingScrollPhysics(),
           children: [
             Center(
               child: Text('Featured Products',
                 style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 45,),
               ),
             ),
             Center(
               child: Text('Winter Collection New Modern Design',
                 style: TextStyle(color: Colors.black, fontSize: 12),
               ),
             ),
             featured_products.when(
               loading: ()=>CircularProgressIndicator(),
               error: (err, stack)=>Text('Error ${err}'),
               data: (featured_products) {
                 return Container(
                   height: MediaQuery.of(context).size.height*1.5,
                   width: MediaQuery.of(context).size.width,
                   child: GridView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: featured_products.length,
                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                       mainAxisSpacing: 1,
                       crossAxisSpacing: 1,
                       crossAxisCount: 4,
                       childAspectRatio: 0.6,
                     ),
                     itemBuilder: (context, index)=>featured_products[index],
                   ),
                 );
               }
             ),
           ],
         ),
      ),
    );
  }

}