import 'package:alabtech_task_1/screen/home/model/home_provider.dart';
import 'package:alabtech_task_1/screen/home/presenatation/view/scafold_builder.dart';
import 'package:alabtech_task_1/utilities.dart/image_path.dart';
import 'package:alabtech_task_1/utilities.dart/strings.dart';
import 'package:alabtech_task_1/utilities.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:alabtech_task_1/utilities.dart/color.dart';

class BikeLocation extends StatefulWidget {
  const BikeLocation({super.key});

  @override
  _BikeLocationState createState() => _BikeLocationState();
}

class _BikeLocationState extends State<BikeLocation> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider =
          Provider.of<BikeLocationProvider>(context, listen: false);
      provider.setScreenWidth(MediaQuery.of(context).size.width);
      provider.startAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final provider = Provider.of<BikeLocationProvider>(context);
    return ScafoldBuilder(
      child: Stack(
        children: [
          Positioned(
              top: 10,
              child: Column(
                children: [
                  Text(
                    tip,
                    style: AppTextStyle.mediumText(
                        size: 20, color: AppColors.gray),
                  ),
                  SizedBox(height: 5,),
                  _tipBox(
                      size, provider) // Pass the provider to the _tipBox method
                ],
              )),
          Positioned(
            top: 450,
            left: 20,
            right: 20,
            child: Container(
              height: 6,
              color: AppColors.gray,
            ),
          ),
          Positioned(
            top: 450,
            left: 20,
            child: Container(
              width: provider.bikePosition,
              height: 6,
              color: AppColors.orenge,
            ),
          ),
          Positioned(
            left: provider.bikePosition + 20,
            top: 420,
            child: const Icon(
              Icons.directions_bike_rounded,
              color: AppColors.orenge,
              size: 32,
            ),
          ),
          Positioned(
              left: 20,
              top: 390,
              child: Text(
                here,
                style:
                    AppTextStyle.semiboldText(size: 20, color: AppColors.gray),
              )),
        ],
      ),
    );
  }

  Padding _tipBox(Size size, BikeLocationProvider provider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 165,
        width: size.width - 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: AppColors.white,
        ),
        child: Column(
          children: [
            SizedBox(height: 
            5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  tipContent,
                  style:
                      AppTextStyle.regularText(size: 14, color: AppColors.gray),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(manpng,
                        width: 50, height: 50, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _tipAmount(amount: '₹20', provider: provider),
                _tipAmount(amount: '₹30', provider: provider),
                _tipAmount(amount: '₹50', provider: provider),
                _tipAmount(amount: 'Other', provider: provider),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: AppColors.orenge,
                  value: provider
                      .isChecked, // Use the provider value for the checkbox
                  onChanged: (value) {
                    provider.toggleCheckbox(); // Call the provider method
                  },
                ),
                Text(
                  addTip,
                  style:
                      AppTextStyle.regularText(size: 14, color: AppColors.gray),
                ), // Checkbox label
              ],
            )
          ],
        ),
      ),
    );
  }

  InkWell _tipAmount(
      {required String amount, required BikeLocationProvider provider}) {
    final isSelected =
        provider.selectedTip == amount; // Check if this amount is selected

    return InkWell(
      onTap: () {
        provider.selectTip(amount); // Call the provider to select the tip
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.orenge),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: isSelected
                  ? AppColors.orenge.withOpacity(0.1)
                  : AppColors.white, // Change color if selected
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  amount,
                  style: TextStyle(
                      color: isSelected
                          ? AppColors.orenge
                          : AppColors.gray), // Change text color
                ),
                if (isSelected) // Show cross mark if selected
                  const Icon(
                    Icons.close,
                    color: AppColors.orenge,
                    size: 16,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
