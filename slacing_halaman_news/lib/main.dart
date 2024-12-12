import 'package:flutter/material.dart';

import 'detailpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewsHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsApp', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Featured News Horizontal List
              SizedBox(
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FeaturedNewsItem(
                      image: 'assets/images/img1.png',
                      category: 'TECHNOLOGY',
                      title: 'Microsoft launches a deepfake detector tool ahead of US election',
                      time: '3 min ago',
                    ),
                    FeaturedNewsItem(
                      image: 'assets/images/img1.png',
                      category: 'BUSINESS',
                      title: 'Stock markets rally as tech sector rebounds',
                      time: '15 min ago',
                    ),
                    FeaturedNewsItem(
                      image: 'assets/images/img3.png',
                      category: 'HEALTH',
                      title: 'New vaccine shows promising results in trials',
                      time: '1 hour ago',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Latest News
              const Text(
                'Latest News',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // News List
              Column(
                children: [
                  NewsItem(
                    category: 'TECHNOLOGY',
                    title: 'Insurtech startup PasarPolis gets \$54 million — Series B',
                    image: 'assets/images/img2.jpg',
                  ),
                  NewsItem(
                    category: 'TECHNOLOGY',
                    title: 'The IPO parade continues as Wish files, Bumble targets',
                    image: 'assets/images/img3.png',
                  ),
                  NewsItem(
                    category: 'TECHNOLOGY',
                    title: 'Hypatos gets \$11.8M for a deep-learning system',
                    image: 'assets/images/img4.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedNewsItem extends StatelessWidget {
  final String image;
  final String category;
  final String title;
  final String time;

  const FeaturedNewsItem({
    super.key,
    required this.image,
    required this.category,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 16,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  category,
                  style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String category;
  final String title;
  final String image;

  const NewsItem({
    super.key,
    required this.category,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              image: image,
              category: category,
              title: title,
              time: 'Just now', // Example placeholder for time
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
