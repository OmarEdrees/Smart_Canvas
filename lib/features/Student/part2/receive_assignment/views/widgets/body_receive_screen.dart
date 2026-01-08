import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Student/part2/receive_assignment/views/widgets/button_upload_image.dart';
import 'package:smart_canvas/features/Student/part2/receive_assignment/views/widgets/header_receive.dart';
import 'package:smart_canvas/features/Student/part2/receive_assignment/views/widgets/note_field.dart';
import 'package:smart_canvas/features/Student/part2/receive_assignment/views/widgets/selected_files.dart';
import 'package:smart_canvas/features/Student/part2/receive_assignment/views/widgets/send_button.dart';
import 'package:smart_canvas/features/Student/part2/receive_assignment/views/widgets/upload_image.dart';

class BodyReceiveScreen extends StatelessWidget {
  const BodyReceiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderReceive(),

          /// Upload Box
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                UploadImage(),

                const SizedBox(height: 20),

                /// Select files button
                ButtonUploadImage(),

                const SizedBox(height: 20),

                /// Note field
                NoteField(),

                const SizedBox(height: 20),

                /// Selected files title
                SelectedFiles(),

                const SizedBox(height: 20),

                /// Send now button
                SendButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
