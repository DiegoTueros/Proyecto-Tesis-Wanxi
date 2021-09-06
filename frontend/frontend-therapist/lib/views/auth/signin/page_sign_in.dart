import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wanxit/controllers/services/services_files.dart';
import 'package:wanxit/models/app/models_app_files.dart';
import 'package:wanxit/utils/utils_files.dart';
import 'package:wanxit/views/shared/shared_files.dart';
part 'parts/part_main.dart';

class PageSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [Background(), _PartMain()],
          fit: StackFit.expand,
        ),
      ),
    );
  }
}
