import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: ClipOval(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: Text(
          'NewsApp',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontal ListView for News Images
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 311,
                    width: 311,
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black12,
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/News1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.5),
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.5),
                                ],
                                stops: const [0.0, 0.5, 1.0],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 24,
                          left: 24,
                          child: Text(
                            'TECHNOLOGY',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 26,
                          right: 14,
                          child: Text(
                            '3 min ago',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 72,
                          right: 24,
                          left: 24,
                          child: Text(
                            'Microsoft launches a\n deepfake detector tool\n ahead of US election',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 24,
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/icons/comment.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 72,
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/icons/bookmark.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          right: 24,
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/icons/share.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // News 2: Using Stack with Background and Image
                  Container(
                    height: 311,
                    width: 311,
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black12,
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/images/News2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                         Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.5),
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.5),
                                ],
                                stops: const [0.0, 0.5, 1.0],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Title for Latest News
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest News',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/forward.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            Container(
              height: 400,
              child: ListView.builder(
                itemCount: newsItems.length,
                itemBuilder: (context, index) {
                  final newsItem = newsItems[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(newsItem.imagePath), 
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Text(
                                newsItem.category,  
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey, 
                                ),
                              ),
                              const SizedBox(height: 8), 
                              
                              Text(
                                newsItem.title,  // Dynamic title
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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

class NewsItem {
  final String imagePath;
  final String category;
  final String title;

  NewsItem({
    required this.imagePath,
    required this.category,
    required this.title,
  });
}

List<NewsItem> newsItems = [
  NewsItem(
    imagePath: 'assets/images/latest1.png',
    category: 'TECHNOLOGY',
    title: 'Insurtech startup PasarPolis gets \$54 million — Series B',
  ),
  NewsItem(
    imagePath: 'assets/images/latest2.png',
    category: 'TECHNOLOGY',
    title: 'The IPO parade continues as Wish files, Bumble targets',
  ),
  NewsItem(
    imagePath: 'assets/images/latest3.png',
    category: 'TECHNOLOGY',
    title: 'Hypatos gets \$11.8M for a deep learning approach',
  ),
];
