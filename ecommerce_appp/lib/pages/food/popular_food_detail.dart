import 'package:ecommerce_appp/utils/colors.dart';
import 'package:ecommerce_appp/utils/dimensions.dart';
import 'package:ecommerce_appp/widgets/app_column.dart';
import 'package:ecommerce_appp/widgets/app_icon.dart';
import 'package:ecommerce_appp/widgets/big_text.dart';
import 'package:ecommerce_appp/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.PopularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/food0.png"),
                ),
              ),
            ),
          ),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.widtht20,
            right: Dimensions.widtht20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.PopularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.widtht20,
                right: Dimensions.widtht20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    Dimensions.radius20,
                  ),
                  topLeft: Radius.circular(
                    Dimensions.radius20,
                  ),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(
                    text: "Introduce",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text:
                            "Stir-Fried Bok Choy with Garlic is a delectable and nutritious Chinese side dish that complements any meal with its vibrant flavors and crisp texture. This simple yet delightful dish features tender bok choy leaves and crunchy stems stir-fried to perfection with aromatic garlic and a touch of savory soy sauce. Vegetable Spring Rolls are a delightful Chinese side dish, bursting with a medley of colorful vegetables wrapped in delicate spring roll wrappers and deep-fried to golden perfection. These crispy delights offer a delightful contrast of textures, with crunchy vegetables encased in a thin, flaky shell.",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.widtht20,
          right: Dimensions.widtht20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              Dimensions.radius20 * 2,
            ),
            topRight: Radius.circular(
              Dimensions.radius20 * 2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.radius20,
                right: Dimensions.widtht20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.radius20,
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.widtht10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.widtht10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.radius20,
                right: Dimensions.widtht20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(text: "\$10 | Add to cart"),
            ),
          ],
        ),
      ),
    );
  }
}
