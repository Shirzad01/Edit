import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Provider/Provider.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MyProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: controller.darkLight ? Colors.black26 : Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("درباره ما"),
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/12953593_Data_security_12.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 70),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "اکنون برنامه‌ای کاملاً جدید و هیجان‌انگیز را برای شما معرفی می‌کنیم! آیا تا به حال به دنبال یک راه ساده و موثر برای گزارش موارد آزاردهنده در فیسبوک بوده‌اید؟ بیشتر نگران نباشید، زیرا حلقه نجات شما در این برنامه است. با استفاده از این برنامه هوشمند و کارآمد، شما قادر خواهید بود به راحتی و سریعاً هر نوع آزار و اذیتی را به مسئولین فیسبوک گزارش دهید. با چند کلیک ساده، شما می‌توانید از تجربه شبکه اجتماعی محبوب فیسبوک لذت ببرید و به آن برای تمام کاربران امنیت و صداقت را بازگردانید.",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18,color: Colors.blueAccent),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("نوت:  مسئولیت هر نوع استفاده و سؤ استفاده آن به دوش کاربر میباشد، تیم ما هیچ نوع مسؤلیتی در قبال استفاده این ندارد.",style: TextStyle(fontSize: 20,color: Colors.blueAccent),textDirection: TextDirection.rtl,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("برای دریافت آپدیت جدید برنامه وارد کانال  زیر شوید.",style: TextStyle(fontSize: 18,color: Colors.blueAccent),textDirection: TextDirection.rtl,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(onPressed: (){
                        launch("https://t.me/karwantech12");
                      }, child: const Text("BM_Karwan_Tech",style: TextStyle(fontSize: 14.54,decoration: TextDecoration.underline,color: Colors.blueAccent),)),

                    ],
                  ),
                  const SizedBox(height: 15),
                  buildContactRow("https://www.facebook.com/Mr.ShirzadJan", "Mr Shirzad", "تماس با توسعه دهنده برنامه:"),
                  buildContactRow("https://t.me/Ameer_0007", "KinG Beparwa", "تماس با ادمین کانال:"),
                  buildContactRow("https://t.me/Baghlani_11", "Murtaza Baghlani", "تماس با ادمین کانال:"),
                    SizedBox(height: 20,),
                    const Center(child: Text("توسعه دهنده برنامه: Shirzad",style: TextStyle(fontSize: 20,color: Colors.blueAccent),textDirection: TextDirection.rtl,)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget buildContactRow(String url, String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              launch(url);
            },
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 18,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(width: 8), // Add some spacing between text button and description
          Expanded(
            child: Text(
              description,
              style: const TextStyle(fontSize: 18),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
