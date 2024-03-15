import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';


class Photos extends StatefulWidget {
  const Photos({super.key});

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      "assets/images.jpeg",
      "assets/images (1).jpeg",
      "assets/images (2).jpeg",
      "assets/AQMI_Flag_asymmetric.svg.png",
      "assets/images (1).jpeg",
      "assets/received_705004825139862.jpeg",
      "assets/received_909613680875123.jpeg",
      "assets/received_1087536602365898.jpeg",
      "assets/report.jpeg",
      "assets/report1.jpeg",
      "assets/received_1087536602365898.jpeg",
      "assets/burhan.jpeg",
      "assets/chez.jpeg",
      "assets/flag.jpeg",
      "assets/wall.jpeg",
      "assets/received_749371376909882.jpeg",
      "assets/ابوبکر+البغدادی.jpg",
    ];
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fullImage(imagePaths: imagePaths[2])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 89,
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(imagePaths[2]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fullImage(imagePaths: imagePaths[5])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 89,
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(imagePaths[5]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fullImage(imagePaths: imagePaths[6])));
                  },
                  child:  CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 89,
                    child: CircleAvatar(
                      radius: 85,
                      backgroundImage: AssetImage(imagePaths[6]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fullImage(imagePaths: imagePaths[7])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 89,
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(imagePaths[7]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fullImage(imagePaths: imagePaths[8])));
                  },
                  child:  CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 89,
                    child: CircleAvatar(
                      radius: 85,
                      backgroundImage: AssetImage(imagePaths[8]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fullImage(imagePaths: imagePaths[9])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 89,
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(imagePaths[9]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fullImage(imagePaths: imagePaths[10])));
                  },
                  child:  CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 89,
                    child: CircleAvatar(
                      radius: 85,
                      backgroundImage: AssetImage(imagePaths[10]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fullImage(imagePaths: imagePaths[11])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 89,
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(imagePaths[11]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fullImage(imagePaths: imagePaths[12])));
                  },
                  child:  CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 89,
                    child: CircleAvatar(
                      radius: 85,
                      backgroundImage: AssetImage(imagePaths[12]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fullImage(imagePaths: imagePaths[13])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 89,
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(imagePaths[13]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fullImage(imagePaths: imagePaths[14])));
                  },
                  child:  CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 89,
                    child: CircleAvatar(
                      radius: 85,
                      backgroundImage: AssetImage(imagePaths[14]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fullImage(imagePaths: imagePaths[16])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 89,
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(imagePaths[16]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fullImage(imagePaths: imagePaths[15])));
                  },
                  child:  CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 89,
                    child: CircleAvatar(
                      radius: 85,
                      backgroundImage: AssetImage(imagePaths[15]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class fullImage extends StatelessWidget {
  final String imagePaths;
  const fullImage({super.key, required this.imagePaths});


  void _saveImageToGallery(BuildContext context) async {
    final imageBytes = await rootBundle.load(imagePaths);
    final bytes = imageBytes.buffer.asUint8List();

    saveImage(bytes);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('تصویر با موفقیت در گالری ذخیره شد')),
    );
  }

  Future<void> saveImage(Uint8List bytes) async {
    final result = await ImageGallerySaver.saveImage(bytes);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text(''),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'save',
                  child: Text('ذخیره کردن عکس'),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 'save') {
                _saveImageToGallery(context);
              }
            },
          ),
        ],
      ),
      body:  Center(
        child: Image.asset(
          imagePaths,
          fit: BoxFit.contain,
          height: 600,
          width: 600,
        ),
      ),
    );
  }
}
