import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends AppBar implements PreferredSizeWidget {
  CustomAppBar(
      {required this.height,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          elevation: 0,
          toolbarHeight: height,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leadingWidth: leadingWidth ?? 0,
          leading: leading,
          title: title,
          titleSpacing: 0,
          centerTitle: centerTitle ?? false,
          actions: actions,
        );

  double height;
  double? leadingWidth;
  Widget? leading;
  Widget? title;
  bool? centerTitle;
  List<Widget>? actions;

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
}
