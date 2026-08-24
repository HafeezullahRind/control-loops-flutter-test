import 'package:flutter/material.dart';

import 'package:flutter_test_app/constants/app_typography.dart';
import 'package:flutter_test_app/constants/color_constants.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Chat',
          style: AppTypography.headingLg(color: ColorConstant.textColor),
        ),
      ),
    );
  }
}
