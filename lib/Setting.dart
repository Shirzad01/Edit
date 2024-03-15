import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/Provider.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MyProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("تنظیمات"),
      ),
      body: Consumer(
          builder: (context, notifier, child) {
            return Column(
              children: [
                Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: controller.darkLight? Colors.grey : Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 2
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading:  IconButton(
                        onPressed: (){
                          controller.changeTheme();
                        }, icon: Icon(controller.darkLight? Icons.light_mode: Icons.dark_mode)),
                    title: const Text("Dark theme"),
                    onTap: (){
                     controller.changeTheme();
                    },
                  ),
                )
              ],
            );
          }
      ),
    );
  }
}