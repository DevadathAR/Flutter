import 'package:alabtech_task_1/screen/home/model/home_provider.dart';
import 'package:alabtech_task_1/screen/home/presenatation/view/scafold_builder.dart';
import 'package:alabtech_task_1/screen/home/presenatation/view/tip_section.dart';
import 'package:alabtech_task_1/screen/home/presenatation/widget/bike_location.dart';
import 'package:alabtech_task_1/utilities.dart/color.dart';
import 'package:alabtech_task_1/utilities.dart/image_path.dart';
import 'package:alabtech_task_1/utilities.dart/strings.dart';
import 'package:alabtech_task_1/utilities.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScafoldBuilder(
      child: ChangeNotifierProvider(
        create: (_) => ProductCardProvider(),
        child: Consumer<ProductCardProvider>(
          builder: (context, provider, child) {
            return InkWell(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BikeLocation(),
                ),
              );
            },
              child: Container(
                height: 200,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _foodImage(context),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Stack(
                            children: [
                              _orderDetails(),
                              _moreButton(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  ClipRRect _foodImage(BuildContext context) {
    final provider = Provider.of<ProductCardProvider>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          
          Image.asset(
            food2Jpg,
            width: 125.0,
            height: 150,
            fit: BoxFit.cover,
          ),
          Positioned(bottom: 0,left: 05, child: Column(
            children: [
              Text(offer,style: AppTextStyle.boldText(size: 18,color: AppColors.white),),
              Text(rate,style: AppTextStyle.boldText(size: 14,color: AppColors.lightgray),),
            ],
          )),


          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              onTap: () {
                provider.toggleFavorite();
              },
              child: Icon(
                provider.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: provider.isFavorite ? Colors.red : AppColors.white,
                size: 30,
              ),
            ),
          ),

        ],
      ),
    );
  }

  Positioned _moreButton() {
    return Positioned(
      top: 0,
      right: 0,
      child: PopupMenuButton<String>(
        onSelected: (String value) {
          if (value == 'Option 1') {
            // Handle Option 1
          } else if (value == 'Option 2') {
            // Handle Option 2
          }
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'Option 1',
            child: Text('Option 1'),
          ),
          const PopupMenuItem<String>(
            value: 'Option 2',
            child: Text('Option 2'),
          ),
        ],
        child: const Icon(
          Icons.more_vert_outlined,
          color: AppColors.gray,
        ),
      ),
    );
  }

  Column _orderDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          restaurantsName,
          style: AppTextStyle.semiboldText(size: 18, color: AppColors.black),
        ),
        _iconAndData(
            data: rateingAndTime,
            icon: Icons.stars_rounded,
            color: AppColors.green),
        _iconAndData(
            data: order, icon: Icons.cake_rounded, color: AppColors.blue),
        _addresText(data: address),
        _addresText(data: distance),
      ],
    );
  }

  Row _iconAndData({icon, data, color}) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          data,
          style: AppTextStyle.regularText(size: 16, color: AppColors.black),
        ),
      ],
    );
  }

  Text _addresText({data}) {
    return Text(
      data,
      style: AppTextStyle.mediumText(size: 14, color: AppColors.gray),
    );
  }
}
