import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
  int currentPage = 0;

  final List<Map<String, String>> pages = [
    {"title": "مرحبًا", "subtitle": " هذا التطبيق يسهل عليك حجز موعد\n لزيارة طبيبك المخصص دون الانتظار\n وبكل سهولة "},
    {"title": " كيفية الدخول ", "subtitle": " للبدء عليك تسجيل الدخول اولا\n ومن ثم متابعة الحجز  "},
    {"title": "ابدأ الآن", "subtitle": "اضغط للمتابعة"},
  ];

  void finishOnboarding(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seen', true);
    Navigator.of(context).pushReplacementNamed('/home');
  }

  void nextPage() {
    if (currentPage < pages.length - 1) {
      controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void prevPage() {
    if (currentPage > 0) {
      controller.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                final page = pages[index];
                return onboardingPage(page["title"]!, page["subtitle"]!);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentPage > 0)
                  ElevatedButton(
                    onPressed: prevPage,
                    child: Text("السابق"),
                  )
                else
                  SizedBox(width: 100), // مكان فاضي بدل زر "السابق" في أول صفحة

                if (currentPage == pages.length - 1)
                  ElevatedButton(
                    onPressed: () => finishOnboarding(context),
                    child: Text("ابدأ"),
                  )
                else
                  ElevatedButton(
                    onPressed: nextPage,
                    child: Text("التالي"),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget onboardingPage(String title, String subtitle) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 24)),
          SizedBox(height: 16),
          Text(subtitle),
        ],
      ),
    );
  }
}
