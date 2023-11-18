import 'package:flutter/material.dart';
import 'package:recommended_anime/models/review.dart';
import 'package:recommended_anime/repositories/anime_repository.dart';
import 'package:recommended_anime/screens/home/add_reviews.dart';
import 'package:recommended_anime/screens/home/review_list_item.dart';

class ReviewAnimePage extends StatefulWidget {

  const ReviewAnimePage({super.key});

  @override
  State<ReviewAnimePage> createState() => _ReviewAnimePageState();
}

class _ReviewAnimePageState extends State<ReviewAnimePage> {
  List<Reviews>? _reviews;
  var _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    getReviews();
  }

  getReviews() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    await Future.delayed(Duration(seconds: 2)); //โหลดหน้าเว็บ

    try {
      var reviews = await AnimeRepository().getReviews();
      debugPrint('Number of reviews: ${reviews.length}');

      setState(() {
        _reviews = reviews;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    buildLoadingOverlay() => Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(child: CircularProgressIndicator()));

    buildError() => Center(
        child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(_errorMessage ?? '', textAlign: TextAlign.center),
              SizedBox(height: 32.0),
              ElevatedButton(onPressed: getReviews, child: Text('Retry'))
            ])));

    buildList() => ListView.builder(
        itemCount: _reviews!.length,
        itemBuilder: (ctx, i) {
          Reviews reviewlist = _reviews![i];
          return ReviewsListItem(reviewlist: reviewlist);
        });

    handleClickAdd() {
      Navigator.pushNamed(context, AddAnimePage.routeName).whenComplete(() {
        getReviews();
      });
    }

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            toolbarHeight: 100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Text(
                    'Review',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            )
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: handleClickAdd, child: Icon(Icons.add)),
        body:Stack(
          children: [
            if(_reviews?.isNotEmpty ?? false) buildList(),
            if (_errorMessage != null) buildError(),
            if (_isLoading) buildLoadingOverlay(),
          ],
        )
    );
  }
}