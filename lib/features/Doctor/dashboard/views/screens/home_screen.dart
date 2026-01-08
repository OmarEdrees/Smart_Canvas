import 'package:flutter/material.dart';
import 'package:smart_canvas/features/Doctor/dashboard/views/widgets/appar.dart';
import 'package:smart_canvas/features/Doctor/dashboard/views/widgets/button_widget.dart';
import 'package:smart_canvas/features/Doctor/dashboard/views/widgets/header_widget.dart';
import 'package:smart_canvas/features/Doctor/dashboard/views/widgets/items_widget.dart';

Scaffold HomeScreen() {
  return Scaffold(
    appBar: appBar(),
    backgroundColor: Colors.grey.shade300,
    body: Stack(
      children: [
        /// HEADER
        HeaderWidget(image: 'assets/images/graduated_person.png'),

        /// BODY
        ItemsWidget(),

        /// RIGHT SIDE BUTTONS
        ButtonWidget(),
      ],
    ),
  );
}
