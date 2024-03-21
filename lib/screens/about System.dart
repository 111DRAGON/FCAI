import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AboutSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "About System",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Get.isDarkMode
                            ? const Color.fromRGBO(59, 59, 59, 1.0)
                            : const Color.fromRGBO(188, 188, 188, 1.0),
                        offset: const Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(16),
                  color: Get.isDarkMode
                      ? const Color.fromRGBO(49, 49, 49, 1)
                      : const Color.fromRGBO(38, 103, 138, 1.0),
                  // color: Color.fromRGBO(38, 103, 138, 1.0),
                ),
                child: Image.asset(
                  'image/logo11.png',
                  width: 180,
                  height: 180,
                ),
              ),
               const SizedBox(
                height: 30,
              ),
              const Text("تم انشاء نظام استبيان درجات وتسجيل مواد ",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
              const Text(" برعاية",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("الستاذ الدكتور منصور حسن رئيس الجامعه ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("الاستاذ الدكتور محمد قايد عميد الكليه",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("الاستاذ الدكتور احمد النجار رئيس قسم علوم الحاسب",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("البشمهندس محمد جمال المدرس المساعد بقسم علوم الحاسب",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.8
              ),),
              const Text("الاستاذ هشام محمد مدير الكليه",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("وعمل كل من طلاب الفرقه الثالثه من قسم علوم الحاسب",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("العام الدراسى 2022/2023",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("احمد ابراهيم حسين عبدالله ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("محمود سعيد السيد محمود سويلم",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("ابراهيم محمد ابراهيم محمد ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("احمد بكرى خليل محمد ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("ابراهيم عبد البصير جمعه ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("يوسف احمد محمد احمد ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("معتصم جمال مصطفى عبدالعظيم",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("يمنى ايمن محمد على",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              const Text("يمنى مجدى محمد ليثى",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
