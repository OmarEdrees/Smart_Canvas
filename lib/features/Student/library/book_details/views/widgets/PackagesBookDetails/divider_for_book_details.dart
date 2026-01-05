import 'package:flutter/material.dart';

class DividerForBookDetails extends StatelessWidget {
  const DividerForBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      thickness: 1,
      color: Colors.grey[350],
      indent: 5,
      endIndent: 5,
    );
  }
}
