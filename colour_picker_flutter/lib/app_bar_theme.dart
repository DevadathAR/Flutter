import 'package:colour_picker_flutter/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  @override
  final Size preferredSize;
  const ThemedAppBar({Key? key, this.title, this.actions})
      : preferredSize = const Size.fromHeight(kTextTabBarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themed, child) {return AppBar(
        title: title,
        actions: actions,
        backgroundColor: themed.mainColor,
      );
      
    }, 
    );
  }
}