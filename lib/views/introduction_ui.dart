// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introduction_screen/src/model/page_decoration.dart';
import 'package:thailand_travel_project/views/login_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: IntroductionScreen(
        dotsContainerDecorator: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://m.thaiware.com/upload_misc/news/2015_08/728x409/160826190139wC.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        globalBackgroundColor: Color.fromARGB(255, 6, 59, 75),
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageUi(
              'ดอยฟ้าห่มปก',
              'https://www.chiangmaiexpert.com/wp-content/uploads/2017/03/%E0%B8%94%E0%B8%AD%E0%B8%A2%E0%B8%9F%E0%B9%89%E0%B8%B2%E0%B8%AB%E0%B9%88%E0%B8%A1%E0%B8%9B%E0%B8%81-1024x683.jpg',
              'เป็นดอยที่สูงอันดับ 2 ของประเทศไทย ด้วยความสูง 2,285 เมตร เหมาะสำหรับการมาเที่ยวเนื่องจากสภาพป่าส่วนใหญ่ยังสมบูรณ์มาก  โดยเฉพาะที่ดอยห่มฟ้าปก มีสัตว์ป่าย้ายถิ่นเข้ามาอยู่มากมายเป็นประจำ'),
          PageUi(
              'น้ำตกคลองลาน',
              'https://s359.kapook.com//pagebuilder/a9c5e4d6-5ac9-4b29-8aa8-6f45d77e79b3.jpg',
              'น้ำตกสวยที่ตั้งอยู่ในพื้นที่อุทยานแห่งชาติคลองลาน จุดเด่นของน้ำตกคลองลานอยู่ที่ลำธารที่ไหลเป็นสายยาวเหยียดเหมือนคลอง อีกทั้งยังเป็นน้ำตกที่สูงและใหญ่ เหมาะกับการพักผ่อนตามธรรมชาติและการถ่ายรูปสุด ๆ ถือเป็นอีกหนึ่งสถานที่ท่องเที่ยวพักผ่อนหย่อนใจยอดนิยมของทั้งนักท่องเที่ยว'),
          PageUi(
              'อุทยานแห่งชาติภูกระดึง',
              'https://roijang.com/wp-content/uploads/2022/12/beautiful-sunset-yeabmek-cliff-phu-kradueng-mountain-national-park-loei-city-thailandphu-kradueng-mountain-national-park-famous-travel-destination-1024x681.jpg',
              'เป็นสถานที่ ที่มีนักท่องเที่ยวเดินทางมาต่อปี นับหลายหมื่น ๆ คน เที่ยวภูเรือหน้าฝน เพื่อมาพิชิตขึ้นอยู่ภูเขาที่สวยที่สุด แต่เส้นทางสมชื่อกับการมาผจญภัยที่สุด ถือเป็นการฝึกความอดทน มีเป้าหมายเพื่อไปชมวิวสวย ๆ แอดว่าก็ สถานที่ท่องเที่ยวภาคอีสาน คุ้มอยู่นะ รีวิว ที่เที่ยวภูเรือ ชมวิวสวยๆ บนยอดภูกระดึง และ กางเต็นท์สัมผัสอากาศดีๆ'),
          PageUi(
              'เกาะพะงัน',
              'https://tatapi.tourismthailand.org/tatfs/Image/CustomPOI/Picture/P03012966_1.jpeg',
              'ตัวเกาะตั้งอยู่ทางตะวันตกเฉียงใต้ของประเทศไทย เป็นสถานที่ที่มีชื่อเสียงโด่งดังไปทั่วโลกจากงานฟูลมูนปาร์ตี้ ที่จัดขึ้นบริเวณหาดริ้น ซึ่งเป็นงานปาร์ตี้ที่จัดขึ้นเป็นประจำทุกคืนวันพระจันทร์เต็มดวง และใกล้ๆ กันจะมีอีกหนึ่งหาดทรายขาวสวยๆ ชื่อว่า หาดยวน หากเราได้นอนพักที่ริมทะเลของเกาะ เราจะสัมผัสได้ถึงเสียงจักจั่นบนต้นไม้และคลื่นกระทบชายหาด'),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
          style: GoogleFonts.kanit(color: const Color.fromARGB(255, 255, 0, 0)),
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginUi(),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025),
          color: Color.fromARGB(255, 150, 150, 150),
          activeSize: Size(MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025),
          activeColor: Color.fromARGB(255, 255, 0, 0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        next: Icon(Icons.arrow_forward_sharp,
            color: const Color.fromARGB(255, 255, 0, 0)),
        nextFlex: 0,
        done: Text(
          'เริ่มต้น',
          style: GoogleFonts.kanit(color: const Color.fromARGB(255, 255, 0, 0)),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginUi(),
          ),
        ),
      ),
    );
  }

  PageViewModel PageUi(
    String IName,
    String IImage,
    String Index,
  ) {
    return PageViewModel(
      titleWidget: Text(
        IName,
        style: GoogleFonts.kanit(
          fontSize: MediaQuery.of(context).size.height * 0.035,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 48, 227, 240),
        ),
      ),
      image: Image.network(
        IImage,
      ),
      bodyWidget: Text('  ' + Index,
          style: GoogleFonts.kanit(
              fontSize: MediaQuery.of(context).size.height * 0.015,
              color: Color.fromARGB(255, 255, 255, 255))),
    );
  }
}
