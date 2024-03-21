import 'package:fcai/core/utils/navigation.dart';
import 'package:fcai/core/utils/user%20data.dart';
import 'package:fcai/features/registration%20screen/presentation/views/registeration%20page.dart';
import 'package:fcai/features/result%20screen/presentation/views/result%20page.dart';
import 'package:fcai/features/splash%20screen/presentation/views/splash%20page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart.';

import '../../../../locale/locale settings.dart';
import '../../../../models/card item.dart';
import '../../../../models/default Drawer.dart';
import '../../../../models/defaultContainerHomePage.dart';
import '../../../../screens/Done Screen.dart';
import '../../../../screens/SubjectRegistration screen.dart';
import '../../../../screens/Top students screen.dart';
import '../../../../screens/about System.dart';
import '../../../../screens/grade statement screen.dart';
import '../../../../screens/result screen.dart';
import '../../../../theme/theme services.dart';
import '../../../done screen/presentation/views/done page.dart';
import '../../../top students screen/presentation/views/top students page.dart';
import 'widgets/default drawer.dart';
import 'widgets/home page item.dart';
import 'widgets/offer item.dart';

// import '../locale/locale settings.dart';
// import '../models/card item.dart';
// import '../models/default Drawer.dart';
// import '../models/defaultContainerHomePage.dart';
// import '../theme/theme services.dart';
// import 'Done Screen.dart';
// import 'SubjectRegistration screen.dart';
// import 'Top students screen.dart';
// import 'about System.dart';
// import 'complaints screen.dart';
// import 'first screen.dart';
// import 'grade statement screen.dart';
// import 'result screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "FCAI BSU",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ThemeService().switchTheme();
            },
            icon: const Icon(Icons.brightness_4_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OfferItem(
              title: "A Trial of Reading The Human Brain",
              image: "image/brain.jpg",
              isExpires: false,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Our Services".tr,
                style: const TextStyle(
                  color: Color(0xff26688B),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.3,
                children: [
                  HomePageItem(
                    image: "image/books.png",
                    text: "Registration".tr,
                    onTap: () {
                      CustomGetNavigation.getTo(
                        page: CoursesRegistrationPage(),
                      );
                    },
                  ),
                  HomePageItem(
                    image: "image/student-grades.png",
                    text: "Result".tr,
                    onTap: () {
                      CustomGetNavigation.getTo(
                        page: ResultPage(),
                      );
                    },
                  ),
                  HomePageItem(
                    image: "image/school.png",
                    text: "Top Student".tr,
                    onTap: () {
                      CustomGetNavigation.getTo(page: TopStudentsPage());
                    },
                  ),
                  HomePageItem(
                    image: "image/done.png",
                    text: "Done".tr,
                    onTap: () {
                      CustomGetNavigation.getTo(page: DonePage());
                    },
                  ),
                  HomePageItem(
                    image: "image/money.png",
                    text: "About System".tr,
                    onTap: () {
                      CustomGetNavigation.getTo(page: AboutSystem());
                    },
                  ),
                  // HomePageItem(
                  //   image: "image/graduation-hat.png",
                  //   text: "Grade Statement".tr,
                  //   onTap: () {
                  //     Get.to(GradeStatementScreen());
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawerEdgeDragWidth: 50,
      drawer: DefaultDrawer(
        changeToArabicLanguage: () {
          controllerLang.changeLange("ar");
        },
        changeToEnglishLanguage: () {
          controllerLang.changeLange("en");
        },
        complaints: () {},
        logOut: () {
          getIt.unregister<String>();
          Get.offAll(const SplashPage());
        },
        accountEmail: "Ahmed Ibrahim",
        accountName: getIt.get<String>(),
      ),
    );
  }
}
