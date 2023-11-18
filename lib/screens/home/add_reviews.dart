import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:recommended_anime/repositories/anime_repository.dart';

class AddAnimePage extends StatefulWidget {
  static const routeName = 'add_anime';

  const AddAnimePage({super.key});

  @override
  State<AddAnimePage> createState() => _AddAnimePageState();
}

class _AddAnimePageState extends State<AddAnimePage>{
  final _reviewNameController = TextEditingController();
  final _reviewsController = TextEditingController();
  double _ratings = 0;

  var _isLoading = false;
  String? _errorMessage;

  validateForm() {
    return _reviewNameController.text.isNotEmpty &&
        _reviewsController.text.isNotEmpty;
  }
  saveAnime() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    await Future.delayed(Duration(seconds: 2));

    try {
      String reviewName = _reviewNameController.text;
      String review = _reviewsController.text;

      await AnimeRepository().addReview(name: reviewName, rating: _ratings, review: review);

      if (mounted) Navigator.pop(context);
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
    var colorScheme = Theme.of(context).colorScheme;

    buildLoadingOverlay() => Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(child: CircularProgressIndicator()));

    handleClickSave() {
      if (validateForm()) {
        saveAnime();
      }
    }
    buildForm() => SingleChildScrollView(
        child: Card(
          child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: colorScheme.background,
                        ),
                        height: 100,
                        width: 100,
                        child: Icon(
                          Icons.person,
                          size: 100,
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: _reviewNameController,
                        decoration: InputDecoration(
                            hintText: 'Reviewer Name',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.greenAccent,
                                )))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: _reviewsController,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            hintText: 'Comment',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.greenAccent,
                                )))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        setState(() {
                          _ratings = rating;
                        });
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: handleClickSave,
                        child: Text('SAVE'),
                      ))
                ],
              )),
        ));

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
                    'Reviewer',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            )
        ),
        body: Stack(
          children: [
            buildForm(),
            if (_isLoading) buildLoadingOverlay(),
          ],
        ));
  }
}