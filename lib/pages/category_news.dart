import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_news_app/model/show_category_model.dart';
import 'package:flutter_news_app/pages/articles_view.dart';
import 'package:flutter_news_app/services/news_service.dart';
import 'package:gap/gap.dart';

/// screen that shows headlines according to category name passed
class CategoryNews extends StatefulWidget {
  const CategoryNews({super.key, required this.categoryName});

  final String categoryName;

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ShowCategoryModel> categoryNewsList = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  void getNews() async {
    final categoryNews = await NewsService()
        .getHeadlinesByCategory(widget.categoryName.toLowerCase());
    categoryNewsList = categoryNews;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          widget.categoryName,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          itemCount: categoryNewsList.length,
          itemBuilder: (ctx, idx) {
            return ShowCategory(
                imageUrl: categoryNewsList[idx].urlToImage!,
                description: categoryNewsList[idx].description!,
                title: categoryNewsList[idx].title!,
                url: categoryNewsList[idx].url!);
          },
          separatorBuilder: (ctx, idc) => const Gap(24),
        ),
      ),
    );
  }
}

class ShowCategory extends StatelessWidget {
  const ShowCategory({
    super.key,
    required this.imageUrl,
    required this.description,
    required this.title,
    required this.url,
  });

  final String imageUrl;
  final String description;
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) => ArticleView(blogUrl: url)),
        );
      },
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                width: MediaQuery.of(context).size.width,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(5),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Gap(10),
            Text(
              description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
