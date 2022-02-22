import 'package:flutter/material.dart';

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  double maxHeight;
  double minHeight;
  HeaderDelegate(
      {required this.child, this.maxHeight = 150, this.minHeight = 50});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

//  Container(
//       color: Colors.white,
//       child: Center(child: icon),
//     );