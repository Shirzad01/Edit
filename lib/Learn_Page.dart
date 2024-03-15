import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  final FlickManager flickManager = FlickManager(
    videoPlayerController: VideoPlayerController.asset(
      "assets/VID-20240311-WA0020.mp4",
    ),
  );
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(height: 10,),
              const Text("«آموزش استفاده از برنامه»",style: TextStyle(fontSize: 21),),
              const SizedBox(height: 20,),
              FlickVideoPlayer(flickManager: flickManager),
               const SizedBox(height: 15,),
               const Text("«آموزش استفاده از گزارش ها»",style: TextStyle(fontSize: 18),textDirection: TextDirection.rtl,),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("در قدم نخست باید 3 الی 5 فیس صابقه فرند دار داشته باشین اول 10 گروپ چت میسازین بعد فیس های خودتانه همراه فیس دشمن اد میکنین در همه گروپ ها باز فیس دشمن ره ادمین میکنین در همه گروپا بعد عکس گروپ هاره داعشی میکنین بعد اسم گروپ جور میکنین همراه نیک نام دشمن وقتی ای کار ها ره کردین بعد 30 دانه عکس لچ سکس و عکس های داعشی بندازین ده همه گروپ ها بعد از دو فیس دیگرتان از هر گزارش 5 بار روان کنین در گروپ ها بعد که مکمل ای کار ها ره کردین از فیس لایت و یا از مسنجر فیس دشمن خوب ریپورت کاری کنین از گروپ ها وقتی از گروپ ها خلاص شد بعد سر فیس دشمن برین ریپورت کاری کنین فیس و پوست هایشه از همه فیس هایتان فیس دشمن جایبجای خراب میشه یا تا ۲۴ ساعت خراب میشه صدفیصد☠️✅️",style: TextStyle(fontSize: 16),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("نوت : وقتی فیس دشمن میزنین باید فرندتان باشه زودتر خراب میشه اگر نبود کمی دیرتر میپره و وقتی فیس دشمن میزنین از ایدی های تقلبی یا فیک تان برین که فیس خودتان خراب نشه ✔️",style: TextStyle(fontSize: 16),textDirection: TextDirection.rtl,textAlign: TextAlign.justify,),
              ),
            ],
          ),
      ),
    );
  }
}
