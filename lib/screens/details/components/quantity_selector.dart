import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class QuantitySelector extends StatefulWidget {
  final Function(int) onQuantityChanged;

  const QuantitySelector({
    Key? key,
    required this.onQuantityChanged,
  }) : super(key: key);

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  TextEditingController controller = TextEditingController(text: "1");
  int selectedQuantity = 1;

  updateQuantity(int? quantity) {
    if (quantity == null || quantity < 1) {
      selectedQuantity = 1;
    }

    else if (quantity > 99) {
      selectedQuantity = 99;
    }

    else {
      selectedQuantity = quantity;
    }

    controller.text = selectedQuantity.toString();

    widget.onQuantityChanged(selectedQuantity);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {
              updateQuantity(selectedQuantity - 1);
            },
          ),
          SizedBox(
            width: getProportionateScreenWidth(100),
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onChanged: (value) {
                int ?quantity = int.tryParse(value);
                updateQuantity(quantity);
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(0),
                    vertical: getProportionateScreenWidth(0)),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: selectedQuantity.toString(),
              ),
            ),
          ),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {
              updateQuantity(selectedQuantity + 1);
            },
          ),
        ],
      ),
    );
  }
}
