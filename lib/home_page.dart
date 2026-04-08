import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_app/detail_hero_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Widget"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black87,
          fontSize: 23,
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.yellowAccent,
      ),
      // backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Column(
          children: [
            // const Spacer(),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (constext, index) {
                  return GestureDetector(
                    onTap: () =>
                        Get.to(() => DetailHeroPage(tag: 'carTag$index')),
                    child: Hero(
                      tag: 'carTag$index',
                      transitionOnUserGestures: true,
                      child: Material(
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTYpvuRlXGLXcv7S98nsxU3mhNNaku34k5_VqToI287h3LjYFXv8UQ4D1V4K_t9V3mFIU7w_anb0K0aPG7xa16gQEm2ozpNlYKkYWZMpOmX91NZI21s6DTmfw',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
