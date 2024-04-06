import 'package:colour_picker_flutter/app_bar_theme.dart';
import 'package:colour_picker_flutter/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of(context, listen: false);

    return Scaffold(
      appBar: ThemedAppBar(
        title: const Text(
          "Theme Provider Example",
          style: TextStyle(),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showColorPicker(context);
            },
            icon: const Icon(
              Icons.colorize_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Consumer<ThemeProvider>(
          builder: (context, themed, child) {
            return SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Text",
                      style: TextStyle(fontSize: 70, color: themed.mainColor),
                    ),
                    Text(
                      "Devadath",
                      style: TextStyle(fontSize: 25, color: themed.mainColor),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Icon(
                      Icons.circle,
                      color: themed.mainColor,
                      size: 100 * themed.mainslider,
                    ),
                    Slider(
                      value: themed.mainslider,
                      activeColor: themed.mainColor,
                      onChanged: (double value) {
                        themeProvider.changeSlideValue(value);
                      },         
                    ),
                    Switch(
                      value: themed.mainState,
                      onChanged: (bool value) {
                        themeProvider.chnageSwitchState(value);
                      },
                      activeColor: themed.mainColor,
                    ),
                  ]),
            );
          },
        ),
      ),
    );
  }
}
void showColorPicker(BuildContext context) {
  ThemeProvider themeProvider = Provider.of(context, listen: false);
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Wrap(
              children: [
                ColorPicker(
                  pickerColor: themeProvider.mainColor,
                  onColorChanged: (color) =>
                      themeProvider.changeThemeColor(color),
                )
              ],
            ),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Consumer<ThemeProvider>(
                builder: (context, value, child) {
                  return Text(
                    "Close",
                    style:
                        TextStyle(fontSize: 25, color: themeProvider.mainColor),
                  );
                },
              ))
            ],
          ));
}
