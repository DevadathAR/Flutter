import 'package:flutter/material.dart';
import 'package:note_flutter/common_utils/colors.dart';
import 'package:note_flutter/common_utils/theme.dart';

class ColorPalette extends StatelessWidget {
  final parentContext;
   ColorPalette({super.key, required this.parentContext});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: const Color(c1),
      clipBehavior: Clip.hardEdge,
      insetPadding: EdgeInsets.all(size.width * 0.03),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: size.width * 0.02,
          runSpacing: size.width * 0.02,
          children: noteColors.entries
              .map((entry) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(entry.key);
                    },
                    child: Container(
                      width: size.width * 0.12,
                      height: size.width * 0.12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width * 0.06),
                          color: Color(entry.value['b']!)),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
