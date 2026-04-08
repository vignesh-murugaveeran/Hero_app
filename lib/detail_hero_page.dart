import 'package:flutter/material.dart';

class DetailHeroPage extends StatelessWidget {
  final String tag;
  const DetailHeroPage({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(title: const Text("Hero Widget")),
      body: SafeArea(
        child: Hero(
          tag: tag,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTYpvuRlXGLXcv7S98nsxU3mhNNaku34k5_VqToI287h3LjYFXv8UQ4D1V4K_t9V3mFIU7w_anb0K0aPG7xa16gQEm2ozpNlYKkYWZMpOmX91NZI21s6DTmfw',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
