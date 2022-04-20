import 'package:flutter/material.dart';
import 'package:vazifa/core/components/decorations.dart';
import 'package:vazifa/core/components/my_cont.dart';
import 'package:vazifa/core/constant/constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';
import 'package:vazifa/core/widgets/app_bar.dart';
import 'package:vazifa/core/widgets/my_card.dart';
import 'package:vazifa/core/widgets/my_category.dart';
import 'package:vazifa/core/widgets/page_indecator.dart';
import 'package:vazifa/screens/home_page/components/home_components.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      // APPBAR
      appBar: MyAppBar(
        firstIcon: Constant.lock,
        lastIcon: Constant.lock,
      ).build(context),

      // BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getHeight(238),
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (_, __) {
                  return MyCont.pageContainer(img: Constant.randomImage);
                },
                itemCount: 5,
              ),
            ),
            pageViewIndecator(pageController: _pageController),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidht(16),
                vertical: getHeight(15),
              ),
              child: MycategoryWidget(
                  category: "Category", txButton: "More Category"),
            ),

            // Category Builder
            HomepageComponents.categoryBuilder(),

            // Flash Sale Banner
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidht(16),
                vertical: getHeight(15),
              ),
              child: MycategoryWidget(category: "Flash Sale"),
            ),

            // Flash Sale Builder
            SizedBox(
              height: getHeight(295),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                  return Padding(
                    padding: EdgeInsets.only(left: getWidht(16)),
                    child: MyCard.cardShop(),
                  );
                },
              ),
            ),

            // Flash Sale Banner
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidht(16),
                vertical: getHeight(18),
              ),
              child: MycategoryWidget(category: "Mega Sale"),
            ),

            // Mega Sale Builder
            SizedBox(
              height: getHeight(295),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                  return Padding(
                    padding: EdgeInsets.only(left: getWidht(16)),
                    child: MyCard.cardShop(),
                  );
                },
              ),
            ),
            Container(
              height: getHeight(206),
              width: getWidht(343),
              decoration: MyDeco.containerDeco(),
            ),
            SizedBox(
              height: getHeight(612),
              width: double.infinity,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: getHeight(295),
                ),
                itemBuilder: (_, __) {
                  return MyCard.cardShop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
