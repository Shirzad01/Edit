import 'package:edit/Learn_Page.dart';
import 'package:edit/Report_Page.dart';
import 'package:edit/Setting.dart';
import 'package:edit/about_us.dart';
import 'package:edit/photos.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final ktabs = <Tab>[
      const Tab(text: "گزارش ها",icon: Icon(Icons.report_problem),),
      const Tab(text: "عکس ها",icon: Icon(Icons.camera_alt)),
      const Tab(text: "آموزش",icon: Icon(Icons.ondemand_video_sharp)),
    ];
    final kPages = <Widget>[
      const Report_Page(),
      const Photos(),
       const LearnPage(),
    ];
    return WillPopScope(
      onWillPop: () => onBeckButtonPressed(context),
      child: DefaultTabController(
        length: ktabs.length,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              PopupMenuButton<String>(
                itemBuilder: (context) {
                  return <PopupMenuEntry<String>>[
                     PopupMenuItem<String>(
                      value: "Save",
                      child: const Text("درباره ما",style: TextStyle(fontSize: 16),textDirection: TextDirection.rtl,),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const About()));
                      },
                    ),
                     PopupMenuItem<String>
                      (child: const Text("تنظیمات"),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
                      },
                    )
                  ];
                },
              ),
            ],
            title: const Center(
              child: Text(
                "        صفحه اصلی",textAlign: TextAlign.center,

              ),
            ),
            bottom: TabBar(
              tabs: ktabs,
              labelColor: Colors.teal,
            ),
          ),
          body: TabBarView(
            children: kPages,
          ),
        ),
      ),
    );
  }
}

Future<bool> onBeckButtonPressed(BuildContext context) async {
  bool? exitApp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("آیا؟", textAlign: TextAlign.right,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          content: const Text(
            "از برنامه خارج میشوید؟", textAlign: TextAlign.right,
            style: TextStyle(fontSize: 20),),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text("نخیر", style: TextStyle(fontSize: 20),)),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text("بلی", style: TextStyle(fontSize: 20),))
          ],
        );
      });
  return exitApp ?? false;
}