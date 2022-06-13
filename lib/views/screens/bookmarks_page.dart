import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:hungry/models/helper/recipe_helper.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/modals/search_filter_modal.dart';
import 'package:hungry/views/widgets/recipe_tile.dart';
import 'dart:math';

class BookmarksPage extends StatefulWidget {
  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  TextEditingController searchInputController = TextEditingController();
  List<Recipe> bookmarkedRecipe = RecipeHelper.bookmarkedRecipe;
  Random r = Random();
  GlobalKey<RefreshIndicatorState> refreshKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: AppColor.primary,
        centerTitle: false,
        elevation: 0,
        title: Text('Yêu Thích',
            style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                fontSize: 16)),
      ),
      body: RefreshIndicator(
          key: refreshKey,
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              // Section 1 - Search Bar
              Container(
                width: MediaQuery.of(context).size.width,
                height: 95,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                color: AppColor.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search Bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Search TextField
                        Expanded(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.primarySoft),
                            child: TextField(
                              controller: searchInputController,
                              onChanged: (value) {
                                print(searchInputController.text);
                                setState(() {});
                              },
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                              textInputAction: TextInputAction.search,
                              decoration: InputDecoration(
                                hintText: 'Bạn muốn nấu món gì?',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.2)),
                                prefixIconConstraints:
                                    BoxConstraints(maxHeight: 20),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 17),
                                focusedBorder: InputBorder.none,
                                border: InputBorder.none,
                                prefixIcon: Visibility(
                                  visible: (searchInputController.text.isEmpty)
                                      ? true
                                      : false,
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 10, right: 12),
                                    child: SvgPicture.asset(
                                      'assets/icons/search.svg',
                                      width: 20,
                                      height: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Filter Button
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                builder: (context) {
                                  return SearchFilterModal();
                                });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.secondary,
                            ),
                            child: SvgPicture.asset('assets/icons/filter.svg'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // Section 2 - Bookmarked Recipe
              Container(
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: bookmarkedRecipe.length,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16);
                    },
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: Key(bookmarkedRecipe[index].toString()),
                        background: Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 30),
                            color: Colors.red,
                            child: Icon(Icons.delete, color: Colors.white)),
                        onDismissed: (direction) {
                          var recipe = bookmarkedRecipe[index];
                          showContent(context, recipe, index);
                          removeRecipe(index);
                        },
                        direction: DismissDirection.endToStart,
                        child: RecipeTile(
                          data: bookmarkedRecipe[index],
                        ),
                      );
                    }),
              ),
            ],
          ),
          onRefresh: () async {
            await refreshList();
          }),
    );
  }

  //Show message deleted
  showContent(context, recipe, index) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('$recipe deleted!'),
        action: SnackBarAction(
            label: "Undo Item",
            onPressed: () {
              undoDelete(index, recipe);
            })));
  }

  //remove reipce
  removeRecipe(index) {
    setState(() {
      bookmarkedRecipe.removeAt(index);
    });
  }

  //Undo Delete
  undoDelete(index, recipe) {
    setState(() {
      bookmarkedRecipe.insert(index, recipe);
    });
  }

  //RefreshList
  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds: 1));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('refreshed!!!!')));
    return null;
  }

  // addRandomRecipe() {
  //   int nextItem = r.nextInt(bookmarkedRecipe.length + 1);
  //   setState(() {
  //     bookmarkedRecipe.add(bookmarkedRecipe.elementAt(nextItem));
  //   });
  // }
}
