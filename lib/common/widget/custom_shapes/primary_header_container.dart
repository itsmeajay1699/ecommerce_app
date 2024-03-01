import 'package:ecommerce_app/common/widget/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/features/shop/home/widget/circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.kPrimary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 370,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  color: TColors.kTextWhite.withOpacity(0.1),
                  width: 400,
                  height: 400,
                  borderRadius: 400,
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  color: TColors.kTextWhite.withOpacity(0.1),
                  width: 400,
                  height: 400,
                  borderRadius: 400,
                ),
              ),
              // SizedBox(width: double.infinity, child: child),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
