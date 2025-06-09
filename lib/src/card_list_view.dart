import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'custom_card.dart';

class ShoppingCardData {
  final String imageUrl;
  final String title;
  final String price;
  final int totalItems;
  final String? details;


  ShoppingCardData({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.totalItems,
    this.details

  });
}

class CardListView extends StatefulWidget {
  final List<ShoppingCardData> products;
  final Axis scrollDirection;
  final bool isLoading;
  final void Function(ShoppingCardData product) onClick;

  const CardListView({
    super.key,
    required this.products,
    this.scrollDirection = Axis.vertical,
    this.isLoading = false,
    required this.onClick,
  });

  @override
  State<CardListView> createState() => _CardListViewState();
}

class _CardListViewState extends State<CardListView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (widget.isLoading) {
      return _buildShimmerEffect(size);
    } else {
      return ListView.builder(
        scrollDirection: widget.scrollDirection,
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          final product = widget.products[index];
          return Container(
            padding: EdgeInsets.only(right: widget.scrollDirection == Axis.horizontal ? 12 : 0,
                bottom: widget.scrollDirection == Axis.vertical ? 12:0),
            width: widget.scrollDirection == Axis.horizontal ? size.width * 0.75 : null,
            height:widget.scrollDirection == Axis.horizontal ? size.height * 0.25 : null,
            child: CustomCard(
              onTap: ()=>widget.onClick(product),
              imageUrl: product.imageUrl,
              title: product.title,
              price: product.price,
              totalItems: product.totalItems,
            ),
          );
        },
      );
    }
  }
}

Widget _buildShimmerEffect(Size size) {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      );
    },
  );
}
