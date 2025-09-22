import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/services/api_service.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => ProductsState();
}

class ProductsState extends State<Products> {
  late Future<List<Product>> products;

  @override
  void initState() {
    super.initState();
    products = APIService().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: tProducts, press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: /*GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: demoProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Nombre de cartes par ligne
              childAspectRatio: 0.75, // Ratio d'aspect de chaque carte
            ),
            itemBuilder: (context, index) {
              //Product product = Product();
              return ProductCard(product: demoProducts[index]);
            },
          ),*/
          FutureBuilder<List<Product>>(
            future: products,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Nombre de cartes par ligne
                    childAspectRatio: 0.75, // Ratio d'aspect de chaque carte
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(product: snapshot.data![index]);
                  },
                );
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        )
        /*SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  return ProductCard(product: demoProducts[index]);
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
          /*
          GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: demoProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Nombre de cartes par ligne
              childAspectRatio: 0.75, // Ratio d'aspect de chaque carte
            ),
            itemBuilder: (context, index) {
              if (demoProducts[index].isPopular)
                return ProductCard(product: demoProducts[index]);

              return SizedBox
                  .shrink(); // ici par défaut la largeur et la hauteur sont 0
            },
          ),*/
        )*/
      ],
    );
  }
}
