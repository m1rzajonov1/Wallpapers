import 'package:flutter/material.dart';
import 'package:wallpapers/core/extension/size_extension.dart';
import 'package:wallpapers/service/wallpapers_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 1, 1),
        leading: IconButton(icon: Icon(Icons.menu,size: context.w *0.07,),onPressed: (){},),
        title: Text(
          "Wallpapers",
          style: TextStyle(
            fontSize: context.w * 0.07,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, size: context.w * 0.07,))
        ],
      ),
      body: FutureBuilder(
        future: HttpService.getDio(),
        builder: (context, AsyncSnapshot snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (snap.hasError) {
            return const Text("Data Error");
          } else {
            // ignore: unused_local_variable
            List data = snap.data;
            return Column(
              children: [
                SizedBox(
                  height: context.h * 0.08,
                  width: context.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        height: context.h * 0.07,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: context.h * 0.820,
                  width: context.w,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}