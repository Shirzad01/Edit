import 'package:edit/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  SharedPreferences? _prefs;
  bool _showIntroduction = true;

  @override
  void initState() {
    super.initState();
    _initPreferences();
  }

  Future<void> _initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _showIntroduction = _prefs?.getBool('showIntroduction') ?? true;
    });
  }

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/OnBoardingWelcome.gif"),
        title: "خوش آمدید",
        body:
        "اکنون برنامه‌ای کاملاً جدید و هیجان‌انگیز را برای شما معرفی می‌کنیم! آیا تا به حال به دنبال یک راه ساده و موثر برای گزارش موارد آزاردهنده در فیسبوک بوده‌اید؟ بیشتر نگران نباشید، زیرا حلقه نجات شما در این برنامه است",
      ),
      PageViewModel(
        image: Image.asset("assets/Hacker.gif"),
        body:
        "کاربر گرامی،  ما با افتخار اعلام می‌کنیم که در اینجا همیشه در خدمت شما هستیم. در صورتی که سوالاتی دارید، نیاز به راهنمایی دارید و یا فیدبکی برای ما دارید، خوشحال می‌شویم از شما بشنویم",
        title: "ارتباطات",
      ),
      PageViewModel(
        image: Image.asset("assets/Mobile login.gif"),
        title: "شروع به کار",
        body:
        "  در این صفحه، می‌خواهیم شما را به یک اقدام مهم دعوت کنیم که می‌تواند تجربه‌ی شما را بهبود بخشد و به شما و دوستانتان فوایدی بیشتری برساند پس همین حالا این برنامه را برای دوستانتان شریک سازی کنید ",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _showIntroduction
          ? IntroductionScreen(
        done: const Text("انجام", style: TextStyle(color: Colors.white)),
        onDone: () {
          _prefs?.setBool('showIntroduction', false);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        pages: getPages(),
        globalBackgroundColor: Colors.black12,
        next: const Icon(Icons.arrow_forward),
        back: const Icon(Icons.arrow_back),
      )
          : HomeScreen(),
    );
  }
}
