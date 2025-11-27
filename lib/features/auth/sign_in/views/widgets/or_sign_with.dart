import 'package:smart_canvas/core/utilies/sizes/sized_config.dart';
import 'package:smart_canvas/core/utilies/styles/app_text_styles.dart';


import 'package:flutter/material.dart';

class OrSignWith extends StatelessWidget {
  const OrSignWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.height * 0.025,
        horizontal: SizeConfig.width * 0.05,
      ),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.black,
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.width * 0.05,
            ),
            child: Text(
              "Or sign with",
              style: AppTextStyles.title18BlackW500,
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.black,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
