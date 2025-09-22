import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/size_config.dart';

import 'package:shop_app/screens/details/components/quantity_selector.dart';

import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: widget.product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: widget.product,
                pressOnSeeMore: () {},
              ),
              QuantitySelector(
                onQuantityChanged: (amount) {
                  quantity = amount;
                },
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.15,
                    right: SizeConfig.screenWidth * 0.15,
                    bottom: getProportionateScreenWidth(40),
                    top: getProportionateScreenWidth(15),
                  ),
                  child: DefaultButton(
                    text: tAddToCart,
                    press: () {
                      bool isAddedToCart = false;
                      for (var cart in demoCarts) {
                        if (cart.product.id == widget.product.id) {
                          cart.numOfItem += quantity;
                          isAddedToCart = true;

                          break;
                        }
                      }

                      // If product is not in cart, add it
                      if (!isAddedToCart) {
                        demoCarts.add(Cart(product: widget.product, numOfItem: quantity));
                      }

                      // Make popup
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${widget.product.title} ajouté au panier.',
                          ),
                        ),
                      );

                      // Redirection to product screen
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
