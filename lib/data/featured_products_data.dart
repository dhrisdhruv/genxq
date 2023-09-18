import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Product extends StatelessWidget {
  Image img;
  int og_price, discount_price;
  Text name;
  Product(this.img, this.name, this.og_price, this.discount_price) {
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: MediaQuery.of(context).padding*2,
        child: Card(
          elevation: 100,
          shadowColor: Colors.black,
          borderOnForeground: true,
          color: Colors.transparent,
          surfaceTintColor: Colors.purple,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height/1.7,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                this.img,
                this.name,
                Text('\$ ${this.og_price}', style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.green),),
                Text('\$ ${this.discount_price}', style: TextStyle(color: Colors.green),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Icon(Icons.shopping_basket, size: MediaQuery.of(context).size.width/50,),
                      onTap: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final featuredProductsProvider = FutureProvider<List<Product>>((ref) {
  List<Product> featured_products=List.empty(growable: true);
  for(int i=1;i<=8;i++) {
    Product p = Product(
        Image.asset('assets/images/featured_products/${i}.png',
        fit: BoxFit.scaleDown,),
        Text('Product ${i}'),
        1198,
        599
    );
    featured_products.add(p);
  }
  print(featured_products);
  return featured_products;
});