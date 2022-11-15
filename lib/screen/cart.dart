import 'package:flutter/material.dart';
import 'package:tonoun/sevices/widgets/menu_detail.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MenuDetails(),
      
    );
  }
}
