import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language AI App',
      theme: ThemeData(
        useMaterial3: false,
        dividerTheme: DividerThemeData(color: Colors.white),
        brightness: Brightness.light,
      ),
      home: PageOne(),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 142, 118, 235),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/page1_img.png")),
            Text(
              "یادگیری میتونه باحال باشه!",
              textDirection: TextDirection.rtl,
              style: PersianFonts.Shabnam.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textDirection: TextDirection.rtl,
              text: TextSpan(
                style: PersianFonts.Vazir.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 194, 171, 254),
                ),
                children: <TextSpan>[
                  TextSpan(text: ' با'),
                  TextSpan(
                      text: ' آواتار ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 253, 158, 78))),
                  TextSpan(text: 'هوش مصنوعی مکالمت رو تمرین کن!'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  /// Circle with two lines and 25% filled
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      value: 0.25,
                      backgroundColor: Color.fromARGB(255, 177, 156, 237),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                      strokeWidth: 15,
                    ),
                  ),

                  /// Circular button with arrow
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageTwo()),
                      );
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 142, 118, 235),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 142, 118, 235),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/page4_img.png")),
            Text(
              "یادگیری میتونه خفن باشه!",
              textDirection: TextDirection.rtl,
              style: PersianFonts.Shabnam.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textDirection: TextDirection.rtl,
              text: TextSpan(
                style: PersianFonts.Vazir.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 194, 171, 254),
                ),
                children: <TextSpan>[
                  TextSpan(text: ' با'),
                  TextSpan(
                      text: ' پلنر ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 253, 158, 78))),
                  TextSpan(text: 'هوش مصنوعی برنامه ریزی کن!'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  /// Circle with two lines and 25% filled
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      value: 0.50,
                      backgroundColor: Color.fromARGB(255, 177, 156, 237),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                      strokeWidth: 15,
                    ),
                  ),

                  /// Circular button with arrow
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageThree()),
                      );
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 142, 118, 235),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 142, 118, 235),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/page3_img.png")),
            Text(
              "یادگیری میتونه جذاب باشه!",
              textDirection: TextDirection.rtl,
              style: PersianFonts.Shabnam.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textDirection: TextDirection.rtl,
              text: TextSpan(
                style: PersianFonts.Vazir.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 194, 171, 254),
                ),
                children: <TextSpan>[
                  TextSpan(text: ' با'),
                  TextSpan(
                      text: ' تایمر ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 253, 158, 78))),
                  TextSpan(text: 'هوش مصنوعی مراقب یادگیریت باش!'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  /// Circle with two lines and 25% filled
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      value: 0.75,
                      backgroundColor: Color.fromARGB(255, 177, 156, 237),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                      strokeWidth: 15,
                    ),
                  ),

                  /// Circular button with arrow
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageFour()),
                      );
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 142, 118, 235),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 142, 118, 235),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/page2_img.png")),
            Text(
              "یادگیری میتونه هیجان انگیز باشه!",
              textDirection: TextDirection.rtl,
              style: PersianFonts.Shabnam.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textDirection: TextDirection.rtl,
              text: TextSpan(
                style: PersianFonts.Vazir.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 194, 171, 254),
                ),
                children: <TextSpan>[
                  TextSpan(text: ' با'),
                  TextSpan(
                      text: ' اساتید ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 253, 158, 78))),
                  TextSpan(text: 'خودت در ارتباط باش!'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  /// Circle with two lines and 25% filled
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      value: 1,
                      backgroundColor: Color.fromARGB(255, 177, 156, 237),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                      strokeWidth: 15,
                    ),
                  ),

                  /// Circular button with arrow
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageFive()),
                      );
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 142, 118, 235),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// Square Button
class SquareButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  SquareButton({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        splashColor: Color.fromARGB(255, 253, 158, 78)
            .withOpacity(0.8), // Splash color for the animation
        highlightColor: Colors.blue.withOpacity(0.1),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            side: BorderSide(color: Color.fromARGB(255, 194, 171, 254)),
            padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
          ),
          child: Text(
            text,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: PersianFonts.Shabnam.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 142, 118, 235),
            ),
          ),
        ),
      ),
    );
  }
}

// Circle with arrow shape
class CircleWithArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 142, 118, 235),
      ),
      child: Center(
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}

class PageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Center(
                child: Image.asset(
              "assets/images/LoginPage1_img.png",
              width: 300,
              height: 300,
            )),
          ),
          Center(
            child: RichText(
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              text: TextSpan(
                style: PersianFonts.Shabnam.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'به اپلیکشن مکالمه'),
                  TextSpan(
                    text: ' هوش مصنوعی ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 253, 158, 78),
                    ),
                  ),
                  TextSpan(
                    text: ' خوش آمدید!',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareButton(
                  text: 'دانشجو هستم!',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageSix()),
                    );
                  },
                ),
                SizedBox(width: 16), // Spacing between buttons
                SquareButton(
                  text: 'استاد هستم!   ',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageSeven()),
                    );
                  },
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 15, 5),
                  child: CircleWithArrow(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PageSix extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
                child: Image.asset(
              "assets/images/LoginPage2_img.png",
              width: 300,
              height: 300,
            )),
          ),
          Center(
            child: Container(
              width: 300,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 142, 118, 235),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'دانشجوی عزیز!',
                    textDirection: TextDirection.rtl,
                    style: PersianFonts.Shabnam.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'برای ورود به اپلیکیشن کد خودتون رو وارد کنید.',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: PersianFonts.Shabnam.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 194, 171, 254),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controller,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        hintText: "کد معرف رو وارد کنید",
                        hintStyle: PersianFonts.Shabnam.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 142, 118, 235)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      if (_controller.text == '1010') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageEight()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 142, 118, 235),
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'ورود',
                      style: PersianFonts.Shabnam.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageSeven extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
                child: Image.asset(
              "assets/images/LoginPage3_img.png",
              width: 300,
              height: 300,
            )),
          ),
          Center(
            child: Container(
              width: 300,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 142, 118, 235),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'استاد عزیز!',
                    textDirection: TextDirection.rtl,
                    style: PersianFonts.Shabnam.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'برای ورود به اپلیکیشن کد خودتون رو وارد کنید.',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: PersianFonts.Shabnam.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 194, 171, 254),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controller,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        hintText: "کد معرف رو وارد کنید",
                        hintStyle: PersianFonts.Shabnam.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 142, 118, 235)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      if (_controller.text == '1111') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageEight()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 142, 118, 235),
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'ورود',
                      style: PersianFonts.Shabnam.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageEight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 62),
            child: Center(
              child: Container(
                height: 150,
                color: Color.fromARGB(255, 248, 248, 248),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            'تکمیل پروفایل \n بخش دوم',
                            style: PersianFonts.Shabnam.copyWith(
                              color: Color.fromARGB(255, 190, 181, 181),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            'تکمیل پروفایل \n بخش اول',
                            style: PersianFonts.Shabnam.copyWith(
                              color: Color.fromARGB(255, 0, 115, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Color.fromARGB(255, 190, 181, 181),
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Color.fromARGB(255, 190, 181, 181),
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Color.fromARGB(255, 190, 181, 181),
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Color.fromARGB(255, 190, 181, 181),
                        ),
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Color.fromARGB(255, 0, 115, 255),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "تکمیل پروفایل - بخش اول",
              style: PersianFonts.Shabnam.copyWith(
                color: Color.fromARGB(255, 65, 65, 67),
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                hintText: "نام خودت رو وارد کن",
                hintStyle: PersianFonts.Shabnam.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 149, 146, 146),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 247, 247, 247),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                hintText: "نام خانوادگی خودت رو وارد کن",
                hintStyle: PersianFonts.Shabnam.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 149, 146, 146),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 247, 247, 247),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                hintText: "سن خودت رو وارد کن",
                hintStyle: PersianFonts.Shabnam.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 149, 146, 146),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 247, 247, 247),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageNine()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 115, 255),
              padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              'بعدی',
              style: PersianFonts.Shabnam.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageNine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 62),
            child: Center(
              child: Container(
                height: 150,
                color: Color.fromARGB(255, 248, 248, 248),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            'تکمیل پروفایل \n بخش دوم',
                            style: PersianFonts.Shabnam.copyWith(
                              color: Color.fromARGB(255, 0, 115, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            'تکمیل پروفایل \n بخش اول',
                            style: PersianFonts.Shabnam.copyWith(
                              color: Color.fromARGB(255, 0, 115, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Color.fromARGB(255, 0, 115, 255),
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Color.fromARGB(255, 190, 181, 181),
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Color.fromARGB(255, 190, 181, 181),
                        ),
                        CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Color.fromARGB(255, 190, 181, 181),
                        ),
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Color.fromARGB(255, 0, 115, 255),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "تکمیل پروفایل - بخش دوم",
              style: PersianFonts.Shabnam.copyWith(
                color: Color.fromARGB(255, 65, 65, 67),
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                hintText: "نام کاربری خودت رو وارد کن",
                hintStyle: PersianFonts.Shabnam.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 149, 146, 146),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 247, 247, 247),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                hintText: "شماره تماس خودت رو وارد کن",
                hintStyle: PersianFonts.Shabnam.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 149, 146, 146),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 247, 247, 247),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                hintText: "عکس پروفایل خودت رو انتخاب کن",
                hintStyle: PersianFonts.Shabnam.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 149, 146, 146),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 247, 247, 247),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => PageNine()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Color.fromARGB(255, 0, 115, 255), // Set the border color
                      width: 2, // Set the border width
                    ),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'قبلی',
                    style: PersianFonts.Shabnam.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 0, 115, 255),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 115, 255),
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'ذخیره',
                    style: PersianFonts.Shabnam.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageTen extends StatefulWidget {
  @override
  _PageTen createState() => _PageTen();
}

class _PageTen extends State<PageTen> {
  int _selectedIndex = 0;
  final String mySvg = 'assets/images/dokhmal.svg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 142, 118, 235),
          toolbarHeight: 150,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.notifications,
                                color: Color.fromARGB(255, 142, 118, 235))),
                        SizedBox(width: 8),
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.messenger,
                                color: Color.fromARGB(255, 142, 118, 235))),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            'سلام، سهیلا',
                            style: PersianFonts.Shabnam.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/user_img.png'),
                          radius: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                          width: 300,
                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              hintText: "سرچ کنید",
                              hintStyle: PersianFonts.Shabnam.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 149, 146, 146),
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 247, 247, 247),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageEleven()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 238, 240, 251),
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'بیشتر ببینید',
                        style: PersianFonts.Shabnam.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 142, 118, 235),
                        ),
                      ),
                    ),
                    Text(
                      "اساتید",
                      style: PersianFonts.Shabnam.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/images/teacher1_img.png"),
                            Image.asset("assets/images/teacher2_img.png"),
                            Image.asset("assets/images/teacher3_img.png"),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                "رضا قربانی",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "مهدیه احمدی",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "سارا رسولی",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                "استاد زبان",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.work,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "استاد زبان",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.work,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "استاد زبان",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.work,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageEleven()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 142, 118, 235),
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "مشاهده اساتید",
                            style: PersianFonts.Shabnam.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 10,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(0, 3), // Offset in the x and y direction
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageEleven()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 238, 240, 251),
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'بیشتر ببینید',
                        style: PersianFonts.Shabnam.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 142, 118, 235),
                        ),
                      ),
                    ),
                    Text(
                      "دوستان",
                      style: PersianFonts.Shabnam.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/friend1_img.png"),
                            Image.asset("assets/images/friend5_img.png"),
                            Image.asset("assets/images/friend6_img.png"),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "سارا امینی",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "لیلا نظری",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "احمد کریمی",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/friend1_img.png"),
                            Image.asset("assets/images/friend5_img.png"),
                            Image.asset("assets/images/friend6_img.png"),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "ترانه کیانی",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "شیوا بهبودی",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "رضا میرزایی",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 128, 127, 127),
                                ),
                              ),
                              SizedBox(width: 1),
                              Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 128, 127, 127),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 10,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(0, 3), // Offset in the x and y direction
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageEleven()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 238, 240, 251),
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'بیشتر ببینید',
                        style: PersianFonts.Shabnam.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 142, 118, 235),
                        ),
                      ),
                    ),
                    Text(
                      "آواتار",
                      style: PersianFonts.Shabnam.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  height: 780,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/images/bot1_img.png"),
                            Image.asset("assets/images/bot2_img.png"),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/bot3_img.png",
                            width: 150,
                            height: 150,
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Container(
                          width: 280,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 115, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                "در این قسمت میتوانید تمام نتایجی که از مکالمه با هوش مصنوعی گرفتید را مشاهده کنید.",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(
                                  value: 0.15,
                                  backgroundColor:
                                      Color.fromARGB(255, 208, 204, 204),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color.fromARGB(255, 255, 0, 0)),
                                  strokeWidth: 10,
                                ),
                              ),
                              Text("15%"),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(
                                  value: 0.44,
                                  backgroundColor:
                                      Color.fromARGB(255, 208, 204, 204),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color.fromARGB(255, 255, 0, 0)),
                                  strokeWidth: 10,
                                ),
                              ),
                              Text("44%"),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(
                                  value: 0.25,
                                  backgroundColor:
                                      Color.fromARGB(255, 208, 204, 204),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color.fromARGB(255, 44, 211, 71)),
                                  strokeWidth: 10,
                                ),
                              ),
                              Text("25%"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            "ازت غلط گرفت!",
                            style: PersianFonts.Shabnam.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            "اشتباه داشتی!",
                            style: PersianFonts.Shabnam.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            "درست حرف زدی!",
                            style: PersianFonts.Shabnam.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(
                                  value: 0.39,
                                  backgroundColor:
                                      Color.fromARGB(255, 208, 204, 204),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color.fromARGB(255, 44, 211, 71)),
                                  strokeWidth: 10,
                                ),
                              ),
                              Text("39%"),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(
                                  value: 0.67,
                                  backgroundColor:
                                      Color.fromARGB(255, 208, 204, 204),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color.fromARGB(255, 255, 0, 0)),
                                  strokeWidth: 10,
                                ),
                              ),
                              Text("67%"),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(
                                  value: 0.50,
                                  backgroundColor:
                                      Color.fromARGB(255, 208, 204, 204),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color.fromARGB(255, 255, 0, 0)),
                                  strokeWidth: 10,
                                ),
                              ),
                              Text("50%"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            "تسلط داشتی!",
                            style: PersianFonts.Shabnam.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            "لهجت مشکل داشت!",
                            style: PersianFonts.Shabnam.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            "گرامرت بد بود!",
                            style: PersianFonts.Shabnam.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 10,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(0, 3), // Offset in the x and y direction
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageEleven()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 238, 240, 251),
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'بیشتر ببینید',
                        style: PersianFonts.Shabnam.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 142, 118, 235),
                        ),
                      ),
                    ),
                    Text(
                      "پلنر",
                      style: PersianFonts.Shabnam.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  height: 480,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                width: 250,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.start,
                                        "تمرین مکالمه",
                                        style: PersianFonts.Shabnam.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.start,
                                        "روز چهارشنبه مکالمه تمرین کن...",
                                        style: PersianFonts.Shabnam.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          color:
                                              Color.fromARGB(255, 88, 85, 85),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "10:10 AM",
                                            style:
                                                PersianFonts.Shabnam.copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w800,
                                              color: Color.fromARGB(
                                                  255, 84, 83, 83),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Container(
                                            width: 15,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  255, 17, 239, 13),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 250,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.start,
                                        "تمرین گرامر",
                                        style: PersianFonts.Shabnam.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.start,
                                        "فردا گرامر فرانسه تمرین کن...",
                                        style: PersianFonts.Shabnam.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          color:
                                              Color.fromARGB(255, 88, 85, 85),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "05:15 AM",
                                            style:
                                                PersianFonts.Shabnam.copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w800,
                                              color: Color.fromARGB(
                                                  255, 84, 83, 83),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Container(
                                            width: 15,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  255, 239, 13, 13),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Container(
                                  width: 280,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 115, 255),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                        "با پلنر هوش مصنوعی برای یادگیری برنامه ریزی کن.",
                                        style: PersianFonts.Shabnam.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 10,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(0, 3), // Offset in the x and y direction
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageEleven()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 238, 240, 251),
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'بیشتر ببینید',
                        style: PersianFonts.Shabnam.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 142, 118, 235),
                        ),
                      ),
                    ),
                    Text(
                      "تایمر",
                      style: PersianFonts.Shabnam.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  height: 300,
                  width: 330,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                        child: Center(
                            child: Image.asset("assets/images/timer_img.png")),
                      ),
                      Center(
                        child: Container(
                          width: 280,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 115, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                "با تایمر هوش مصنوعی بدون خستگی یاد بگیر.",
                                style: PersianFonts.Shabnam.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedLabelStyle: TextStyle(
              fontFamily: PersianFonts.Shabnam.fontFamily,
              fontSize: 16,
              fontWeight: FontWeight.w800),
          unselectedLabelStyle: TextStyle(
            fontFamily: PersianFonts.Shabnam.fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
          backgroundColor: Color.fromARGB(255, 235, 235, 235),
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
            switch (_selectedIndex) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageTen()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageEleven()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageEleven()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageEleven()),
                );
                break;
            }
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'خانه',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.terminal),
              label: 'آواتار',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.support_agent),
              label: 'اساتید',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer_outlined),
              label: 'مراقب',
            ),
          ],
        ),
      ),
    );
  }
}

class PageEleven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(child: Image.asset("assets/images/oosp_img.png")),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              "کاربر عزیز! این قسمت در حال توسعه میباشد :)",
              style: PersianFonts.Shabnam.copyWith(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageTen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 115, 255),
                padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'بازگشت به خانه',
                style: PersianFonts.Shabnam.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
