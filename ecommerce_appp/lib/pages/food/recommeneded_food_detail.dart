import 'package:ecommerce_appp/utils/colors.dart';
import 'package:ecommerce_appp/utils/dimensions.dart';
import 'package:ecommerce_appp/widgets/app_icon.dart';
import 'package:ecommerce_appp/widgets/big_text.dart';
import 'package:ecommerce_appp/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.radius20,
                    ),
                    topRight: Radius.circular(
                      Dimensions.radius20,
                    ),
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "Chinese Side",
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.widtht20,
                    right: Dimensions.widtht20,
                  ),
                  child: ExpandableTextWidget(
                    text:
                        'Stir-Fried Bok Choy with Garlic is a delectable and nutritious Chinese side dish that complements any meal with its vibrant flavors and crisp texture. This simple yet delightful dish features tender bok choy leaves and crunchy stems stir-fried to perfection with aromatic garlic and a touch of savory soy sauce. Vegetable Spring Rolls are a delightful Chinese side dish, bursting with a medley of colorful vegetables wrapped in delicate spring roll wrappers and deep-fried to golden perfection. These crispy delights offer a delightful contrast of textures, with crunchy vegetables encased in a thin, flaky shell. Stir-Fried Bok Choy with Garlic is a delectable and nutritious Chinese side dish that complements any meal with its vibrant flavors and crisp texture. This simple yet delightful dish features tender bok choy leaves and crunchy stems stir-fried to perfection with aromatic garlic and a touch of savory soy sauce. Vegetable Spring Rolls are a delightful Chinese side dish, bursting with a medley of colorful vegetables wrapped in delicate spring roll wrappers and deep-fried to golden perfection. These crispy delights offer a delightful contrast of textures, with crunchy vegetables encased in a thin, flaky shell. Stir-Fried Bok Choy with Garlic is a delectable and nutritious Chinese side dish that complements any meal with its vibrant flavors and crisp texture. This simple yet delightful dish features tender bok choy leaves and crunchy stems stir-fried to perfection with aromatic garlic and a touch of savory soy sauce. Vegetable Spring Rolls are a delightful Chinese side dish, bursting with a medley of colorful vegetables wrapped in delicate spring roll wrappers and deep-fried to golden perfection. These crispy delights offer a delightful contrast of textures, with crunchy vegetables encased in a thin, flaky shell. Stir-Fried Bok Choy with Garlic is a delectable and nutritious Chinese side dish that complements any meal with its vibrant flavors and crisp texture. This simple yet delightful dish features tender bok choy leaves and crunchy stems stir-fried to perfection with aromatic garlic and a touch of savory soy sauce. Vegetable Spring Rolls are a delightful Chinese side dish, bursting with a medley of colorful vegetables wrapped in delicate spring roll wrappers and deep-fried to golden perfection. These crispy delights offer a delightful contrast of textures, with crunchy vegetables encased in a thin, flaky shell. Stir-Fried Bok Choy with Garlic is a delectable and nutritious Chinese side dish that complements any meal with its vibrant flavors and crisp texture. This simple yet delightful dish features tender bok choy leaves and crunchy stems stir-fried to perfection with aromatic garlic and a touch of savory soy sauce. Vegetable Spring Rolls are a delightful Chinese side dish, bursting with a medley of colorful vegetables wrapped in delicate spring roll wrappers and deep-fried to golden perfection. These crispy delights offer a delightful contrast of textures, with crunchy vegetables encased in a thin, flaky shell.',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.widtht20 * 2.5,
              right: Dimensions.widtht20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgoroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\$12.88"+" X "+"0",
                  color: AppColors.mainColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgoroundColor: AppColors.mainColor,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
