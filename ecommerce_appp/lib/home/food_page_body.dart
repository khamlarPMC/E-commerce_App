import 'package:ecommerce_appp/widgets/big_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320, // Fixed height for the PageView
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (
          context,
          position,
        ) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven
                ? const Color(0xFF69c5df)
                : const Color(0xFF9294cc),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image/food1.png"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  BigText(text: "Chinese Side"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
