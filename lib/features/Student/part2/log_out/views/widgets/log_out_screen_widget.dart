import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/leave/leave_request/views/widgets/appBar_widget_without_image.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/body_button_yes_or_no.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/image_widget.dart';
import 'package:smart_canvas/features/Student/part2/log_out/views/widgets/leaving_sure.dart';

class LogOutScreenWidget extends StatelessWidget {
  const LogOutScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetWithoutImage(
        title: 'Log out',
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          ImageWidget(image: 'logout_icon.png'),
          SizedBox(height: 30),
          leavingSure(),
          BodyButtonYesOrNo(),
        ],
      ),
    );
  }
}
